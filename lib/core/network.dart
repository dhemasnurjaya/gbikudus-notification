import 'dart:convert';

import 'package:http/http.dart' as http;

/// Network interface
abstract class Network {
  /// Get data from URL
  Future<String> get(
    String host,
    String path, {
    Map<String, String> queries = const {},
  });

  /// Get data from URI
  Future<String> getFromUri(Uri uri);
}

/// Network implementation
class NetworkImpl implements Network {
  final _client = http.Client();

  @override
  Future<String> get(
    String host,
    String path, {
    Map<String, String> queries = const {},
  }) async {
    final uri = Uri(
      scheme: 'https',
      host: host,
      path: path,
      queryParameters: queries,
    );
    final response = await _client.get(uri);
    return utf8.decode(response.bodyBytes);
  }

  @override
  Future<String> getFromUri(Uri uri) async {
    final response = await _client.get(uri);
    return utf8.decode(response.bodyBytes);
  }
}
