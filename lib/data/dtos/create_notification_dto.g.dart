// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNotificationDtoImpl _$$CreateNotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNotificationDtoImpl(
      id: json['id'] as String,
      topic: json['topic'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      schedule: json['schedule'] as String,
    );

Map<String, dynamic> _$$CreateNotificationDtoImplToJson(
        _$CreateNotificationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'title': instance.title,
      'body': instance.body,
      'schedule': instance.schedule,
    };
