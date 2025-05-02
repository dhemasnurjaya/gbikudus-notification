// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_church_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetChurchEventDto _$GetChurchEventDtoFromJson(Map<String, dynamic> json) =>
    GetChurchEventDto(
      id: (json['id'] as num).toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      title: json['title'] as String,
      image: json['image'] as String,
      isNotificationSent: json['isNotificationSent'] as bool,
    );

Map<String, dynamic> _$GetChurchEventDtoToJson(GetChurchEventDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'title': instance.title,
      'image': instance.image,
      'isNotificationSent': instance.isNotificationSent,
    };
