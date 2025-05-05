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
      sentAt: json['sentAt'] == null
          ? null
          : DateTime.parse(json['sentAt'] as String),
    );

Map<String, dynamic> _$GetChurchEventDtoToJson(GetChurchEventDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'title': instance.title,
      'image': instance.image,
      'sentAt': instance.sentAt?.toIso8601String(),
    };
