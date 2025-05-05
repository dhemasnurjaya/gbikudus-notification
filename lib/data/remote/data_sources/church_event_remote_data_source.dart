import 'dart:convert';

import 'package:gbikudus_notification/core/network.dart';
import 'package:gbikudus_notification/data/remote/models/church_event_model.dart';
import 'package:gbikudus_notification/data/remote/models/directus_response.dart';

/// Defines the interface for a remote data source.
/// This class will directly interact with the church event API.
// ignore: one_member_abstracts
abstract class ChurchEventRemoteDataSource {
  /// Fetches church events from the API.
  Future<DirectusResponse<ChurchEventModel>> getChurchEvents();
}

/// A concrete implementation of [ChurchEventRemoteDataSource].
class ChurchEventRemoteDataSourceImpl extends ChurchEventRemoteDataSource {
  /// Creates a new instance of [ChurchEventRemoteDataSourceImpl].
  /// [network] is the instance of the [Network] class used for network
  ChurchEventRemoteDataSourceImpl({required Network network})
      : _network = network;

  final Network _network;

  @override
  Future<DirectusResponse<ChurchEventModel>> getChurchEvents() async {
    final response = await _network.get(
      'api-v2.gbikudus.com',
      '/items/events',
      queries: {
        'fields': 'id,start_date,end_date,title,description,image',
        'sort': 'start_date',
      },
    );

    final decodedResponse = jsonDecode(response) as Map<String, Object?>;
    return DirectusResponse.fromJson(
      decodedResponse,
      (json) => ChurchEventModel.fromJson(json! as Map<String, Object?>),
    );
  }
}
