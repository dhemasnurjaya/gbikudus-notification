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
    database = NotificationDatabaseImpl()..open(path: testDbPath);
  });

  tearDown(() {
    database.close();
    File(testDbPath).deleteSync();
  });

  test('should create notification', () {
    // arrange
    const notification = CreateNotificationDto(
      id: '1',
      topic: 'topic',
      title: 'Hello',
      body: 'World',
      schedule: '* * * * *',
    );

    // act
    database.createNotification(notification);

    // assert
    final notifications = database.list();
    expect(notifications.length, 1);
    expect(notifications.first.id, notification.id);
    expect(notifications.first.topic, notification.topic);
    expect(notifications.first.title, notification.title);
    expect(notifications.first.body, notification.body);
    expect(notifications.first.schedule, notification.schedule);
  });

  test('should delete notification', () {
    // arrange
    const notification = CreateNotificationDto(
      id: '1',
      topic: 'topic',
      title: 'Hello',
      body: 'World',
      schedule: '* * * * *',
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
    const notification = CreateNotificationDto(
      id: '1',
      topic: 'topic',
      title: 'Hello',
      body: 'World',
      schedule: '* * * * *',
    );
    database.createNotification(notification);

    // act
    database.updateNotification(
      notification.id,
      const UpdateNotificationDto(
        topic: 'new topic',
        title: 'Hi',
        body: 'Dart',
        schedule: '*/5 * * * *',
      ),
    );

    // assert
    final notifications = database.list();
    expect(notifications.length, 1);
    expect(notifications.first.id, notification.id);
    expect(notifications.first.topic, 'new topic');
    expect(notifications.first.title, 'Hi');
    expect(notifications.first.body, 'Dart');
    expect(notifications.first.schedule, '*/5 * * * *');
  });

  test('should list notifications', () {
    // arrange
    const notification1 = CreateNotificationDto(
      id: '1',
      topic: 'topic',
      title: 'Hello, World!',
      body: 'Hello, World!',
      schedule: '* * * * *',
    );
    const notification2 = CreateNotificationDto(
      id: '2',
      topic: 'topic',
      title: 'Hello, World!',
      body: 'Hello, World!',
      schedule: '* * * * *',
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
