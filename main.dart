import 'dart:async';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:gbikudus_notification/core/use_case.dart';
import 'package:gbikudus_notification/domain/use_cases/list_church_events.dart';
import 'package:gbikudus_notification/injection_container.dart';

late InjectionContainer _ic;

/// Any code initialized within this method will only run on server start,
/// hot reloads afterwards will not trigger this method until a hot restart.
Future<void> init(InternetAddress ip, int port) async {
  _ic = InjectionContainer();
  await _ic.init();

  Timer.periodic(
    const Duration(seconds: 2),
    (timer) async => _ic.syncChurchEvents(const NoParams()),
  );
}

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) async {
  return serve(
    handler.use(
      provider<ListChurchEvents>((context) {
        return _ic.listChurchEvents;
      }),
    ),
    ip,
    port,
  );
}
