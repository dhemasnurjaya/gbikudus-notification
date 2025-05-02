import 'package:freezed_annotation/freezed_annotation.dart';

part 'directus_response.freezed.dart';
part 'directus_response.g.dart';

/// Represents metadata about the response from the Directus API.
///
/// [totalCount] indicates the total number of items available.
/// [filterCount] indicates the number of items that match the filter criteria.
@freezed
sealed class DirectusMeta with _$DirectusMeta {
  factory DirectusMeta({
    @JsonKey(name: 'total_count') required int? totalCount,
    @JsonKey(name: 'filter_count') required int? filterCount,
  }) = _DirectusMeta;

  factory DirectusMeta.fromJson(Map<String, dynamic> json) =>
      _$DirectusMetaFromJson(json);
}

/// Represents an error response from the Directus API.
///
/// [message] contains the error message.
@freezed
sealed class DirectusError with _$DirectusError {
  factory DirectusError(String message) = _DirectusError;

  factory DirectusError.fromJson(Map<String, dynamic> json) =>
      _$DirectusErrorFromJson(json);
}

/// Represents a generic response from the Directus API.
///
/// This class is used to handle the API response for various models.
/// [data] will be null if the request fails.
/// [errors] will be null if the request is successful.
@Freezed(genericArgumentFactories: true)
sealed class DirectusResponse<T> with _$DirectusResponse<T> {
  factory DirectusResponse({
    required List<T>? data,
    required DirectusMeta? meta,
    required List<DirectusError>? errors,
  }) = _DirectusResponse;

  factory DirectusResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$DirectusResponseFromJson(json, fromJsonT);
}
