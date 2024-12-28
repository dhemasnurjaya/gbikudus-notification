import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:gbikudus_notification/data/dtos/create_notification_dto.dart';
import 'package:gbikudus_notification/data/dtos/get_notification_dto.dart';
import 'package:gbikudus_notification/data/dtos/update_notification_dto.dart';
import 'package:gbikudus_notification/data/notification_database.dart';

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  final notificationDb = context.read<NotificationDatabase>();

  try {
    if (method == HttpMethod.get) {
      final notifications = notificationDb.list();
      return Response.json(
        body: notifications
            .map(
              (e) => GetNotificationDto(
                id: e.id,
                title: e.title,
                sendDate: e.sendDate,
              ).toJson(),
            )
            .toList(),
      );
    }

    if (method == HttpMethod.post) {
      final body =
          jsonDecode(await context.request.body()) as Map<String, dynamic>;
      final createDto = CreateNotificationDto.fromJson(body);
      notificationDb.createNotification(createDto);
      return Response(statusCode: 201);
    }

    if (method == HttpMethod.delete) {
      final id = context.request.uri.queryParameters['id'];
      if (id != null) {
        notificationDb.deleteNotification(id);
        return Response(statusCode: 204);
      }
    }

    if (method == HttpMethod.put) {
      final id = context.request.uri.queryParameters['id'];
      if (id != null) {
        final body =
            jsonDecode(await context.request.body()) as Map<String, dynamic>;
        final createDto = UpdateNotificationDto.fromJson(body);
        notificationDb.updateNotification(id, createDto);
        return Response(statusCode: 204);
      }
    }
  } catch (e) {
    return Response.json(
      statusCode: 500,
      body: {
        'error': e.toString(),
      },
    );
  }

  return Response.json(
    statusCode: 400,
    body: {'message': 'Bad Request'},
  );
}
