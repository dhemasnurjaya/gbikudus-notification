import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:gbikudus_notification/data/notification_database.dart';

Future<void> init(InternetAddress ip, int port) async {
  // Any code initialized within this method will only run on server start, any hot reloads
  // afterwards will not trigger this method until a hot restart.
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  final notificationDatabase = NotificationDatabaseImpl()..init();
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
