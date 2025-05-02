import 'package:dart_frog/dart_frog.dart';
import 'package:gbikudus_notification/domain/repositories/church_event_notification_repositories.dart';

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  final churchEventRepository = context.read<ChurchEventRepository>();

  try {
    if (method == HttpMethod.post) {
      await churchEventRepository.syncChurchEvents();

      return Response.json(
        body: {
          'message': 'Church events synced successfully',
        },
      );
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
