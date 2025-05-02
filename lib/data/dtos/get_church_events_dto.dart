import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbikudus_notification/domain/entities/church_event.dart';

part 'get_church_events_dto.g.dart';

/// A data transfer object (DTO) for getting church events.
@JsonSerializable()
class GetChurchEventsDto {
  /// Creates a new instance of [GetChurchEventsDto].
  /// Properties are the same as the [ChurchEvent] entity.
  const GetChurchEventsDto({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.image,
    required this.isNotificationSent,
  });

  /// Deserializes JSON into a [GetChurchEventsDto] instance.
  factory GetChurchEventsDto.fromJson(Map<String, dynamic> json) =>
      _$GetChurchEventsDtoFromJson(json);

  /// Serializes a [GetChurchEventsDto] instance into JSON.
  Map<String, dynamic> toJson() => _$GetChurchEventsDtoToJson(this);

  /// Church Event ID.
  final int id;

  /// Start date of the church event.
  final DateTime startDate;

  /// End date of the church event.
  final DateTime endDate;

  /// Title of the church event.
  final String title;

  /// Image ID of the church event.
  final String image;

  /// Indicates if the notification for the church event has been sent.
  final bool isNotificationSent;
}
