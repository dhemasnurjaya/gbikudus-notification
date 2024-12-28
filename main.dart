import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:gbikudus_notification/data/notification_database.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  final notificationDatabase = NotificationDatabaseImpl()..init();

  // TODO: start periodic task to send notifications

  return serve(
    handler.use(
      provider<NotificationDatabase>((context) {
        return notificationDatabase;
      }),
    ),
    ip,
    port,
  );
}
