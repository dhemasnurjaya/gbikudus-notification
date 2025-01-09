import 'package:dart_frog/dart_frog.dart';

import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;

Handler middleware(Handler handler) {
  // chain the middlewares
  return handler.use(requestLogger()).use(_cors);
}

Handler _cors(Handler handler) {
  return handler.use(
    fromShelfMiddleware(
      shelf.corsHeaders(
        headers: {
          shelf.ACCESS_CONTROL_ALLOW_ORIGIN: 'https://api-v2.gbikudus.com',
        },
      ),
    ),
  );
}
