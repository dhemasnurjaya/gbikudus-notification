// ignore_for_file: public_member_api_docs

import 'package:gbikudus_notification/data/dtos/create_notification_dto.dart';
import 'package:gbikudus_notification/data/dtos/update_notification_dto.dart';
import 'package:gbikudus_notification/data/models/notification_model.dart';
import 'package:sqlite3/sqlite3.dart';

const notificationDatabasePath = 'notification.db';

abstract class NotificationDatabase {
  void init();

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
  void init({String path = notificationDatabasePath}) {
    _db = sqlite3.open(path);
    _db?.execute('''
      CREATE TABLE IF NOT EXISTS notifications (
        id TEXT PRIMARY KEY,
        title TEXT,
        sendDate TEXT,
        isSent INTEGER
      )
    ''');
  }

  @override
  void createNotification(CreateNotificationDto notification) {
    _db?.execute(
      '''
      INSERT INTO notifications (id, title, sendDate)
      VALUES (?, ?, ?)
      ''',
      [
        notification.id,
        notification.title,
        notification.sendDate.toIso8601String(),
      ],
    );
  }

  @override
  void deleteNotification(String id) {
    _db?.execute('DELETE FROM notifications WHERE id = ?', [id]);
  }

  @override
  void updateNotification(String id, UpdateNotificationDto notification) {
    final existing = _db?.select(
      'SELECT * FROM notifications WHERE id = ? LIMIT 1',
      [id],
    ).first;
    if (existing == null || existing.isEmpty) {
      throw Exception('Notification with id $id not found');
    }
    final existingNotification = NotificationModel(
      id: existing['id'] as String,
      title: existing['title'] as String,
      sendDate: DateTime.parse(existing['sendDate'] as String),
      isSent: existing['isSent'] == 1,
    );

    _db?.execute(
      '''
      UPDATE notifications
      SET title = ?, sendDate = ?, isSent = ?
      WHERE id = ?
      ''',
      [
        notification.title ?? existingNotification.title,
        notification.sendDate?.toIso8601String() ??
            existingNotification.sendDate.toIso8601String(),
        0,
        id,
      ],
    );
  }

  @override
  List<NotificationModel> list() {
    final result = _db?.select('SELECT * FROM notifications');
    return result?.map((row) {
          return NotificationModel(
            id: row['id'] as String,
            title: row['title'] as String,
            sendDate: DateTime.parse(row['sendDate'] as String),
            isSent: row['isSent'] == 1,
          );
        }).toList() ??
        [];
  }
}
