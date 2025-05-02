import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repositories.dart';
import 'package:gbikudus_notification/injection_container.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // injection container
  final ic = InjectionContainer();

  return serve(
    handler.use(
      provider<ChurchEventRepository>((context) {
        return ic.churchEventRepository;
      }),
    ),
    ip,
    port,
  );
}
