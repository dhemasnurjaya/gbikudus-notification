import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:gbikudus_notification/data/dtos/create_notification_dto.dart';
import 'package:gbikudus_notification/data/notification_database.dart';

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  final notificationDb = context.read<NotificationDatabase>();

  if (method == HttpMethod.post) {
    final body =
        jsonDecode(await context.request.body()) as Map<String, dynamic>;
    final createDto = CreateNotificationDto.fromJson(body);
    notificationDb.createNotification(createDto);
    return Response(statusCode: 201);
  }

  return Response.json(
    statusCode: 400,
    body: {'message': 'Bad Request'},
  );
}
