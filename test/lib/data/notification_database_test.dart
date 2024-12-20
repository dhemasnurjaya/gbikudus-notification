// ignore_for_file: cascade_invocations

import 'dart:io';

import 'package:gbikudus_notification/data/dtos/create_notification_dto.dart';
import 'package:gbikudus_notification/data/dtos/update_notification_dto.dart';
import 'package:gbikudus_notification/data/notification_database.dart';
import 'package:test/test.dart';

const testDbPath = 'notification_test.db';

void main() {
  late NotificationDatabase database;

  setUp(() {
    database = NotificationDatabaseImpl()..init(path: testDbPath);
  });

  tearDown(() {
    File(testDbPath).deleteSync();
  });

  test('should create notification', () {
    // arrange
    final notification = CreateNotificationDto(
      id: '1',
      title: 'Hello, World!',
      sendDate: DateTime.now(),
    );

    // act
    database.createNotification(notification);

    // assert
    final notifications = database.list();
    expect(notifications.length, 1);
    expect(notifications.first.id, notification.id);
    expect(notifications.first.title, notification.title);
    expect(notifications.first.sendDate, notification.sendDate);
  });

  test('should delete notification', () {
    // arrange
    final notification = CreateNotificationDto(
      id: '1',
      title: 'Hello, World!',
      sendDate: DateTime.now(),
    );
    database.createNotification(notification);

    // act
    database.deleteNotification(notification.id);

    // assert
    final notifications = database.list();
    expect(notifications.length, 0);
  });

  test('should update notification', () {
    // arrange
    final notification = CreateNotificationDto(
      id: '1',
      title: 'Hello, World!',
      sendDate: DateTime.now(),
    );
    database.createNotification(notification);

    // act
    database.updateNotification(
      notification.id,
      UpdateNotificationDto(
        title: 'Hello, Dart!',
        sendDate: DateTime.now(),
        isSent: false,
      ),
    );

    // assert
    final notifications = database.list();
    expect(notifications.length, 1);
    expect(notifications.first.id, notification.id);
    expect(notifications.first.title, 'Hello, Dart!');
  });

  test('should list notifications', () {
    // arrange
    final notification1 = CreateNotificationDto(
      id: '1',
      title: 'Hello, World!',
      sendDate: DateTime.now(),
    );
    final notification2 = CreateNotificationDto(
      id: '2',
      title: 'Hello, Dart!',
      sendDate: DateTime.now(),
    );
    database.createNotification(notification1);
    database.createNotification(notification2);

    // act
    final notifications = database.list();

    // assert
    expect(notifications.length, 2);
    expect(notifications.first.id, notification1.id);
    expect(notifications.first.title, notification1.title);
    expect(notifications.last.id, notification2.id);
    expect(notifications.last.title, notification2.title);
  });
}
