import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:gbikudus_notification/domain/use_cases/list_church_events.dart';
import 'package:gbikudus_notification/domain/use_cases/sync_church_events.dart';
import 'package:gbikudus_notification/injection_container.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  // injection container
  final ic = InjectionContainer();
  await ic.init();

  return serve(
    handler.use(
      provider<SyncChurchEvents>((context) {
        return ic.syncChurchEvents;
      }),
    ).use(
      provider<ListChurchEvents>((context) {
        return ic.listChurchEvents;
      }),
    ),
    ip,
    port,
  );
}
