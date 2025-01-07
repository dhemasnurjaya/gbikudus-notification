// ignore_for_file: public_member_api_docs

import 'package:gbikudus_notification/data/dtos/create_notification_dto.dart';
import 'package:gbikudus_notification/data/dtos/update_notification_dto.dart';
import 'package:gbikudus_notification/data/models/notification_model.dart';
import 'package:sqlite3/sqlite3.dart';

const notificationDatabasePath = 'notification.db';

abstract class NotificationDatabase {
  void open();

  void close();

  void createNotification(CreateNotificationDto notification);

  void updateNotification(
    String id,
    UpdateNotificationDto notification,
  );

  void deleteNotification(String id);

  List<NotificationModel> list();
}

class NotificationDatabaseImpl implements NotificationDatabase {
  Database? _db;

  @override
  void open({String path = notificationDatabasePath}) {
    _db = sqlite3.open(path);
    // schedule field will be a cron expression
    _db?.execute('''
      CREATE TABLE IF NOT EXISTS notification (
        id TEXT PRIMARY KEY NOT NULL,
        topic TEXT NOT NULL,
        title TEXT NOT NULL,
        body TEXT NOT NULL,
        schedule TEXT NOT NULL
      )
    ''');
    _db?.execute('''
      CREATE TABLE IF NOT EXISTS notification_history (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        notificationId TEXT NOT NULL,
        sendDate TEXT NOT NULL,
        FOREIGN KEY (notificationId) REFERENCES notifications(id)
      )
    ''');
  }

  @override
  void close() {
    _db?.dispose();
  }

  @override
  void createNotification(CreateNotificationDto notification) {
    _db?.execute(
      '''
      INSERT INTO notification (id, topic, title, body, schedule)
      VALUES (?, ?, ?, ?, ?)
      ''',
      [
        notification.id,
        notification.topic,
        notification.title,
        notification.body,
        notification.schedule,
      ],
    );
  }

  @override
  void deleteNotification(String id) {
    _db?.execute('DELETE FROM notification WHERE id = ?', [id]);
  }

  @override
  void updateNotification(String id, UpdateNotificationDto notification) {
    final existing = _db?.select(
      'SELECT * FROM notification WHERE id = ? LIMIT 1',
      [id],
    ).first;
    if (existing == null || existing.isEmpty) {
      throw Exception('Notification with id $id not found');
    }
    final existingNotification = NotificationModel(
      id: existing['id'] as String,
      topic: existing['topic'] as String,
      title: existing['title'] as String,
      body: existing['body'] as String,
      schedule: existing['schedule'] as String,
    );

    _db?.execute(
      '''
      UPDATE notification
      SET topic= ?, title = ?, body = ?, schedule = ?
      WHERE id = ?
      ''',
      [
        notification.topic ?? existingNotification.topic,
        notification.title ?? existingNotification.title,
        notification.body ?? existingNotification.body,
        notification.schedule ?? existingNotification.schedule,
        id,
      ],
    );
  }

  @override
  List<NotificationModel> list() {
    final result = _db?.select('SELECT * FROM notification');
    return result?.map((row) {
          return NotificationModel(
            id: row['id'] as String,
            topic: row['topic'] as String,
            title: row['title'] as String,
            body: row['body'] as String,
            schedule: row['schedule'] as String,
          );
        }).toList() ??
        [];
  }
}
