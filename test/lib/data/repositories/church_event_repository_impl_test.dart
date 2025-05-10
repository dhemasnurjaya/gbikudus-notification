import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:gbikudus_notification/core/cloud_messaging.dart';
import 'package:gbikudus_notification/core/failures.dart';
import 'package:gbikudus_notification/core/globals.dart';
import 'package:gbikudus_notification/core/time.dart';
import 'package:gbikudus_notification/data/local/data_sources/church_event_notification_local_data_source.dart';
import 'package:gbikudus_notification/data/local/models/church_event_notification_model.dart';
import 'package:gbikudus_notification/data/remote/data_sources/church_event_remote_data_source.dart';
import 'package:gbikudus_notification/data/remote/models/church_event_model.dart';
import 'package:gbikudus_notification/data/remote/models/directus_response.dart';
import 'package:gbikudus_notification/data/repositories/church_event_repository_impl.dart';
import 'package:gbikudus_notification/domain/entities/church_event_notification.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../fpdart_util.dart';

class MockChurchEventRemoteDataSource extends Mock
    implements ChurchEventRemoteDataSource {}

class MockChurchEventNotificationLocalDataSource extends Mock
    implements ChurchEventNotificationLocalDataSource {}

class MockTime extends Mock implements Time {}

class MockCloudMessaging extends Mock implements CloudMessaging {}

void main() {
  late MockChurchEventRemoteDataSource mockRemoteDataSource;
  late MockChurchEventNotificationLocalDataSource mockLocalDataSource;
  late MockTime mockTime;
  late MockCloudMessaging mockCloudMessaging;
  late ChurchEventRepositoryImpl repository;

  setUp(() {
    mockRemoteDataSource = MockChurchEventRemoteDataSource();
    mockLocalDataSource = MockChurchEventNotificationLocalDataSource();
    mockTime = MockTime();
    mockCloudMessaging = MockCloudMessaging();
    repository = ChurchEventRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      time: mockTime,
      cloudMessaging: mockCloudMessaging,
    );
  });

  group('getChurchEvents', () {
    test('should return a list of church event from local data source',
        () async {
      // arrange
      const tChurchEventModel = ChurchEventModel(
        id: 1,
        title: 'Test Event',
        description: 'Test Description',
        startDate: '2025-01-01',
        endDate: '2025-01-02',
        image: 'image',
      );
      final tChurchEventNotificationModel = ChurchEventNotificationModel(
        id: tChurchEventModel.id,
        startDate: tChurchEventModel.startDate,
        endDate: tChurchEventModel.endDate,
        title: tChurchEventModel.title,
        description: tChurchEventModel.description,
        image: tChurchEventModel.image,
      );
      when(() => mockLocalDataSource.list()).thenAnswer(
        (_) async => [tChurchEventNotificationModel],
      );

      // act
      final result = await repository.getChurchEvents();

      // assert
      final tExpected = [
        ChurchEventNotification(
          id: tChurchEventModel.id,
          title: tChurchEventModel.title,
          startDate: DateTime.parse(tChurchEventModel.startDate),
          endDate: DateTime.parse(tChurchEventModel.endDate),
          image: tChurchEventModel.image,
          sentAt: tChurchEventNotificationModel.sentAt,
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
        description: 'Test Description',
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
          description: tChurchEventModel.description,
          image: tChurchEventModel.image,
        ),
      );
      when(() => mockLocalDataSource.exists(any()))
          .thenAnswer((_) async => false);
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

    test('should return CacheFailure when local data source fails', () async {
      // arrange
      const tChurchEventModel = ChurchEventModel(
        id: 1,
        title: 'Test Event',
        description: 'Test Description',
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
          description: tChurchEventModel.description,
          image: tChurchEventModel.image,
        ),
      );
      when(() => mockLocalDataSource.exists(any()))
          .thenAnswer((_) async => false);
      when(() => mockRemoteDataSource.getChurchEvents())
          .thenAnswer((_) async => tDirectusResponse);
      when(() => mockLocalDataSource.write(any())).thenThrow(Exception());

      // act
      final result = await repository.syncChurchEvents();

      // assert
      expect(result, isLeftThat(isA<CacheFailure>()));
      verify(() => mockLocalDataSource.write(any()));
    });
  });

  group('sendChurchEventNotification', () {
    test('should send church event notification', () async {
      // arrange
      final tNow = DateTime.parse('2025-01-01');
      final tChurchEventNotificationModel = ChurchEventNotificationModel(
        id: 1,
        startDate: '2025-01-01', // <-- start date is the same as now
        endDate: '2025-01-02', // <-- end date is after now
        title: 'Test Event',
        description: 'Test Description',
        image: 'image',
      );
      registerFallbackValue(tChurchEventNotificationModel);
      when(() => mockTime.now()).thenReturn(tNow);
      when(
        () => mockCloudMessaging.sendMessage(
          topic: any(named: 'topic'),
          title: any(named: 'title'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async {});
      when(() => mockLocalDataSource.list()).thenAnswer(
        (_) async => [tChurchEventNotificationModel],
      );
      when(() => mockLocalDataSource.write(any())).thenAnswer((_) async {});
      // act
      final result = await repository.sendChurchEventNotification();
      // assert
      expect(result, right<Failure, void>(null));
      verify(() => mockLocalDataSource.list());
      verify(() => mockLocalDataSource.write(any()));
      verify(
        () => mockCloudMessaging.sendMessage(
          topic: churchEventTopic,
          title: tChurchEventNotificationModel.title,
          body: tChurchEventNotificationModel.description,
        ),
      );
    });

    test('should not send expired church event notification', () async {
      // arrange
      final tNow = DateTime.parse('2025-01-03');
      final tChurchEventNotificationModel = ChurchEventNotificationModel(
        id: 1,
        startDate: '2025-01-01',
        endDate: '2025-01-02', // <-- end date is before now (expired)
        title: 'Test Event',
        description: 'Test Description',
        image: 'image',
      );
      registerFallbackValue(tChurchEventNotificationModel);
      when(() => mockTime.now()).thenReturn(tNow);
      when(
        () => mockCloudMessaging.sendMessage(
          topic: any(named: 'topic'),
          title: any(named: 'title'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async {});
      when(() => mockLocalDataSource.list()).thenAnswer(
        (_) async => [tChurchEventNotificationModel],
      );
      when(() => mockLocalDataSource.write(any())).thenAnswer((_) async {});
      // act
      final result = await repository.sendChurchEventNotification();
      // assert
      expect(result, right<Failure, void>(null));
      verify(() => mockLocalDataSource.list());
      verifyNever(() => mockLocalDataSource.write(any()));
      verifyNever(
        () => mockCloudMessaging.sendMessage(
          topic: any(named: 'topic'),
          title: any(named: 'title'),
          body: any(named: 'body'),
        ),
      );
    });

    test('should not send early church event notification', () async {
      // arrange
      final tNow = DateTime.parse('2025-01-01');
      final tChurchEventNotificationModel = ChurchEventNotificationModel(
        id: 1,
        startDate: '2025-01-02', // <-- start date is after now (early)
        endDate: '2025-01-03',
        title: 'Test Event',
        description: 'Test Description',
        image: 'image',
      );
      registerFallbackValue(tChurchEventNotificationModel);
      when(() => mockTime.now()).thenReturn(tNow);
      when(
        () => mockCloudMessaging.sendMessage(
          topic: any(named: 'topic'),
          title: any(named: 'title'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async {});
      when(() => mockLocalDataSource.list()).thenAnswer(
        (_) async => [tChurchEventNotificationModel],
      );
      when(() => mockLocalDataSource.write(any())).thenAnswer((_) async {});
      // act
      final result = await repository.sendChurchEventNotification();
      // assert
      expect(result, right<Failure, void>(null));
      verify(() => mockLocalDataSource.list());
      verifyNever(() => mockLocalDataSource.write(any()));
      verifyNever(
        () => mockCloudMessaging.sendMessage(
          topic: any(named: 'topic'),
          title: any(named: 'title'),
          body: any(named: 'body'),
        ),
      );
    });

    test('should return CacheFailure when local data source fails', () async {
      // arrange
      final tNow = DateTime.parse('2025-01-01');
      when(() => mockTime.now()).thenReturn(tNow);
      when(
        () => mockCloudMessaging.sendMessage(
          topic: any(named: 'topic'),
          title: any(named: 'title'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async {});
      when(() => mockLocalDataSource.list()).thenThrow(Exception());

      // act
      final result = await repository.sendChurchEventNotification();

      // assert
      expect(result, isLeftThat(isA<CacheFailure>()));
      verify(() => mockLocalDataSource.list());
    });

    test('should return ServerFailure when cloud messaging fails', () async {
      // arrange
      final tNow = DateTime.parse('2025-01-01');
      final tChurchEventNotificationModel = ChurchEventNotificationModel(
        id: 1,
        startDate: '2025-01-01',
        endDate: '2025-01-02',
        title: 'Test Event',
        description: 'Test Description',
        image: 'image',
      );
      registerFallbackValue(tChurchEventNotificationModel);
      when(() => mockLocalDataSource.list()).thenAnswer(
        (_) async => [tChurchEventNotificationModel],
      );
      when(() => mockTime.now()).thenReturn(tNow);
      when(() => mockLocalDataSource.write(any())).thenAnswer((_) async {});
      when(
        () => mockCloudMessaging.sendMessage(
          topic: any(named: 'topic'),
          title: any(named: 'title'),
          body: any(named: 'body'),
        ),
      ).thenThrow(const HttpException('error'));

      // act
      final result = await repository.sendChurchEventNotification();

      // assert
      expect(result, isLeftThat(isA<ServerFailure>()));
      verify(
        () => mockCloudMessaging.sendMessage(
          topic: churchEventTopic,
          title: tChurchEventNotificationModel.title,
          body: tChurchEventNotificationModel.description,
        ),
      );
    });
  });
}
