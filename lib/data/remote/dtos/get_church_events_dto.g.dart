// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_church_events_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetChurchEventsDto _$GetChurchEventsDtoFromJson(Map<String, dynamic> json) =>
    GetChurchEventsDto(
      id: (json['id'] as num).toInt(),
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      title: json['title'] as String,
      image: json['image'] as String,
      isNotificationSent: json['isNotificationSent'] as bool,
    );

Map<String, dynamic> _$GetChurchEventsDtoToJson(GetChurchEventsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'title': instance.title,
      'image': instance.image,
      'isNotificationSent': instance.isNotificationSent,
    };
