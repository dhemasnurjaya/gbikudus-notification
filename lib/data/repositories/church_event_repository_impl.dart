import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/cloud_messaging.dart';
import 'package:gbikudus_notification/core/failures.dart';
import 'package:gbikudus_notification/core/time.dart';
import 'package:gbikudus_notification/data/local/local_database.dart';
import 'package:gbikudus_notification/data/local/models/church_event_notification_model.dart';
import 'package:gbikudus_notification/data/remote/data_sources/church_event_remote_data_source.dart';
import 'package:gbikudus_notification/domain/entities/church_event_notification.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repository.dart';

/// Concrete implementation of the [ChurchEventRepository] interface.
class ChurchEventRepositoryImpl extends ChurchEventRepository {
  /// Creates a new instance of [ChurchEventRepositoryImpl].
  ChurchEventRepositoryImpl({
    required ChurchEventRemoteDataSource remoteDataSource,
    required LocalDatabase<String, ChurchEventNotificationModel>
        localDataSource,
    required Time time,
    required CloudMessaging cloudMessaging,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        _time = time,
        _cloudMessaging = cloudMessaging;

  final ChurchEventRemoteDataSource _remoteDataSource;
  final LocalDatabase<String, ChurchEventNotificationModel> _localDataSource;
  final Time _time;
  final CloudMessaging _cloudMessaging;

  @override
  Future<Either<Failure, List<ChurchEventNotification>>>
      getChurchEvents() async {
    try {
      final churchEventNotificationModels = await _localDataSource.list();
      final churchEvents = churchEventNotificationModels
          .map(
            (model) => ChurchEventNotification(
              id: model.id,
              startDate: DateTime.parse(model.startDate),
              endDate: DateTime.parse(model.endDate),
              title: model.title,
              image: model.image,
              sentAt: model.sentAt,
            ),
          )
          .toList();
      return Right(churchEvents);
    } on Exception catch (e) {
      return Left(
        CacheFailure(message: 'Failed to get church events', cause: e),
      );
    }
  }

  @override
  Future<Either<Failure, void>> syncChurchEvents() async {
    // TODO(dhemas): use [ChurchEventNotificationModel] isDeleted field
    //  to delete the event from the local database if the event is deleted
    //  in the remote data source
    try {
      final churchEvents = await _remoteDataSource.getChurchEvents();
      final churchEventModels = churchEvents.data;

      if (churchEventModels != null) {
        for (final churchEventModel in churchEventModels) {
          final churchEventNotificationModel =
              ChurchEventNotificationModel.fromRemote(churchEventModel);
          await _localDataSource.write(churchEventNotificationModel);
        }
        return const Right(null);
      } else {
        return const Left(CacheFailure(message: 'Response format mismatch'));
      }
    } on Exception catch (e) {
      return Left(
        CacheFailure(message: 'Failed to sync church events', cause: e),
      );
    }
  }

  @override
  Future<Either<Failure, void>> sendChurchEventNotification() async {
    try {
      final now = _time.now();
      final events = await _localDataSource.list();
      final eventsToSend = events.where((event) {
        final startDate = DateTime.parse(event.startDate);
        final endDate = DateTime.parse(event.endDate);
        final isUnsent = event.sentAt == null;
        final isDue =
            startDate.isAtSameMomentAs(now) || startDate.isBefore(now);
        final isNotExpired = endDate.isAfter(now);
        return isUnsent && isDue && isNotExpired;
      }).toList();

      for (final event in eventsToSend) {
        await _cloudMessaging.sendMessage(
          topic: 'church_event',
          title: event.title,
          body: event.description,
        );
        final updatedEvent = event.copyWith(sentAt: now);
        await _localDataSource.write(updatedEvent);
      }

      return const Right(null);
    } on HttpException catch (e) {
      return Left(ServerFailure(message: e.message, cause: e));
    } on Exception catch (e) {
      return Left(
        CacheFailure(message: 'Failed to get church events', cause: e),
      );
    }
  }
}
