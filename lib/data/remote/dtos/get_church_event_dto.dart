import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gbikudus_notification/domain/entities/church_event_notification.dart';

part 'get_church_event_dto.g.dart';

/// A data transfer object (DTO) for getting church events.
@JsonSerializable()
class GetChurchEventDto {
  /// Creates a new instance of [GetChurchEventDto].
  /// Properties are the same as the [ChurchEventNotification] entity.
  const GetChurchEventDto({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.image,
    required this.sentAt,
  });

  /// Deserializes JSON into a [GetChurchEventDto] instance.
  factory GetChurchEventDto.fromJson(Map<String, dynamic> json) =>
      _$GetChurchEventDtoFromJson(json);

  /// Serializes a [GetChurchEventDto] instance into JSON.
  Map<String, dynamic> toJson() => _$GetChurchEventDtoToJson(this);

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
  final DateTime? sentAt;
}
