import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:googleapis_auth/auth_io.dart';

/// Send an FCM message to a [topic] with a [title] and [body].
Future<void> sendFCMMessage({
  required String topic,
  required String title,
  required String body,
}) async {
  // Load the service account key file
  final serviceAccountKey = File('firebase-adminsdk.json');
  final serviceAccountJson = jsonDecode(await serviceAccountKey.readAsString())
      as Map<String, dynamic>;
  final projectId = serviceAccountJson['project_id'];

  // Get the credentials
  final credentials = ServiceAccountCredentials.fromJson(serviceAccountJson);

  // Define the required scopes
  const scopes = ['https://www.googleapis.com/auth/firebase.messaging'];

  // Authenticate and get an HTTP client with an access token
  final client = await clientViaServiceAccount(credentials, scopes);

  try {
    // FCM REST API endpoint
    final url =
        'https://fcm.googleapis.com/v1/projects/$projectId/messages:send';

    // Define the FCM message
    final message = {
      'message': {
        'topic': 'daily_devotion',
        'notification': {
          'title': '1 Tesalonika 5:16',
          'body': 'Bersukacitalah senantiasa',
        },
      },
    };

    // Send the HTTP POST request
    final response = await client.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(message),
    );

    // Handle the response
    if (response.statusCode == 200) {
      log('Message sent successfully: ${response.body}');
    } else {
      log('Failed to send message: ${response.statusCode} ${response.body}');
    }
  } finally {
    // Close the client
    client.close();
  }
}
