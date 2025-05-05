import 'package:dart_frog/dart_frog.dart';
import 'package:gbikudus_notification/core/use_case.dart';
import 'package:gbikudus_notification/data/remote/dtos/get_church_event_dto.dart';
import 'package:gbikudus_notification/domain/use_cases/list_church_events.dart';

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) {
    return _onGet(context);
  }

  return Response.json(
    statusCode: 400,
    body: {'message': 'Bad Request'},
  );
}

Future<Response> _onGet(RequestContext context) async {
  final listChurchEvents = context.read<ListChurchEvents>();
  final churchEvents = await listChurchEvents(const NoParams());
  return churchEvents.fold(
    (failure) {
      return Response.json(
        statusCode: 500,
        body: {
          'error': failure.message,
        },
      );
    },
    (events) {
      return Response.json(
        body: events
            .map(
              (event) => GetChurchEventDto(
                id: event.id,
                startDate: event.startDate,
                endDate: event.endDate,
                title: event.title,
                image: event.image,
                sentAt: event.sentAt,
              ).toJson(),
            )
            .toList(),
      );
    },
  );
}
