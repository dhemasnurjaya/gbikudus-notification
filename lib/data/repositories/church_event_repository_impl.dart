import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/failures.dart';
import 'package:gbikudus_notification/data/local/local_database.dart';
import 'package:gbikudus_notification/data/local/models/church_event_notification_model.dart';
import 'package:gbikudus_notification/data/remote/data_sources/church_event_remote_data_source.dart';
import 'package:gbikudus_notification/domain/entities/church_event.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repository.dart';

/// Concrete implementation of the [ChurchEventRepository] interface.
class ChurchEventRepositoryImpl extends ChurchEventRepository {
  /// Creates a new instance of [ChurchEventRepositoryImpl].
  ChurchEventRepositoryImpl({
    required ChurchEventRemoteDataSource remoteDataSource,
    required LocalDatabase<String, ChurchEventNotificationModel>
        localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  final ChurchEventRemoteDataSource _remoteDataSource;
  final LocalDatabase<String, ChurchEventNotificationModel> _localDataSource;

  @override
  Future<Either<Failure, List<ChurchEvent>>> getChurchEvents() async {
    try {
      final churchEventNotificationModels = await _localDataSource.list();
      final churchEvents = churchEventNotificationModels
          .map(
            (model) => ChurchEvent(
              id: model.id,
              startDate: DateTime.parse(model.startDate),
              endDate: DateTime.parse(model.endDate),
              title: model.title,
              image: model.image,
              isNotificationSent: model.isNotificationSent,
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
    try {
      final churchEvents = await _remoteDataSource.getChurchEvents();
      final churchEventModels = churchEvents.data;

      if (churchEventModels != null) {
        for (final churchEventModel in churchEventModels) {
          final churchEventNotificationModel = ChurchEventNotificationModel(
            id: churchEventModel.id,
            startDate: churchEventModel.startDate,
            endDate: churchEventModel.endDate,
            title: churchEventModel.title,
            image: churchEventModel.image,
          );
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
}
