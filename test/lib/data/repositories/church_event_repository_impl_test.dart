import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/failures.dart';
import 'package:gbikudus_notification/data/local/data_sources/church_event_notification_local_data_source.dart';
import 'package:gbikudus_notification/data/local/models/church_event_notification_model.dart';
import 'package:gbikudus_notification/data/remote/data_sources/church_event_remote_data_source.dart';
import 'package:gbikudus_notification/data/remote/models/church_event_model.dart';
import 'package:gbikudus_notification/data/remote/models/directus_response.dart';
import 'package:gbikudus_notification/data/repositories/church_event_repository_impl.dart';
import 'package:gbikudus_notification/domain/entities/church_event.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../fpdart_util.dart';

class MockChurchEventRemoteDataSource extends Mock
    implements ChurchEventRemoteDataSource {}

class MockChurchEventNotificationLocalDataSource extends Mock
    implements ChurchEventNotificationLocalDataSource {}

void main() {
  late MockChurchEventRemoteDataSource mockRemoteDataSource;
  late MockChurchEventNotificationLocalDataSource mockLocalDataSource;
  late ChurchEventRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockChurchEventRemoteDataSource();
    mockLocalDataSource = MockChurchEventNotificationLocalDataSource();
    repository = ChurchEventRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
    );
  });

  group('getChurchEvents', () {
    test('should return a list of church event from local data source',
        () async {
      // arrange
      const tChurchEventModel = ChurchEventModel(
        id: 1,
        title: 'Test Event',
        startDate: '2025-01-01',
        endDate: '2025-01-02',
        image: 'image',
      );
      final tChurchEventNotificationModel = ChurchEventNotificationModel(
        id: tChurchEventModel.id,
        startDate: tChurchEventModel.startDate,
        endDate: tChurchEventModel.endDate,
        title: tChurchEventModel.title,
        image: tChurchEventModel.image,
      );
      when(() => mockLocalDataSource.list()).thenAnswer(
        (_) async => [tChurchEventNotificationModel],
      );

      // act
      final result = await repository.getChurchEvents();

      // assert
      final tExpected = [
        ChurchEvent(
          id: tChurchEventModel.id,
          title: tChurchEventModel.title,
          startDate: DateTime.parse(tChurchEventModel.startDate),
          endDate: DateTime.parse(tChurchEventModel.endDate),
          image: tChurchEventModel.image,
          isNotificationSent: tChurchEventNotificationModel.isNotificationSent,
        ),
      ];
      expect(result, isRightThat(equals(tExpected)));
      verify(() => mockLocalDataSource.list());
    });

    test('should return CacheFailure when local data source fails', () async {
      // arrange
      when(() => mockLocalDataSource.list()).thenThrow(Exception());

      // act
      final result = await repository.getChurchEvents();

      // assert
      expect(result, isLeftThat(isA<CacheFailure>()));
      verify(() => mockLocalDataSource.list());
    });
  });

  group('syncChurchEvents', () {
    test('should sync church events from remote to local', () async {
      // arrange
      const tChurchEventModel = ChurchEventModel(
        id: 1,
        title: 'Test Event',
        startDate: '2025-01-01',
        endDate: '2025-01-02',
        image: 'image',
      );
      final tDirectusResponse = DirectusResponse(
        data: [tChurchEventModel],
        meta: null,
        errors: null,
      );
      registerFallbackValue(
        ChurchEventNotificationModel(
          id: tChurchEventModel.id,
          startDate: tChurchEventModel.startDate,
          endDate: tChurchEventModel.endDate,
          title: tChurchEventModel.title,
          image: tChurchEventModel.image,
        ),
      );
      when(
        () => mockRemoteDataSource.getChurchEvents(),
      ).thenAnswer((_) async => tDirectusResponse);
      when(() => mockLocalDataSource.write(any())).thenAnswer((_) async {});

      // act
      final result = await repository.syncChurchEvents();

      // assert
      expect(result, right<Failure, void>(null));
      verify(() => mockRemoteDataSource.getChurchEvents());
      verify(() => mockLocalDataSource.write(any()));
    });

    test('should return CacheFailure when remote data source fails', () async {
      // arrange
      when(() => mockRemoteDataSource.getChurchEvents()).thenThrow(Exception());

      // act
      final result = await repository.syncChurchEvents();

      // assert
      expect(result, isLeftThat(isA<CacheFailure>()));
      verify(() => mockRemoteDataSource.getChurchEvents());
    });
  });
}
