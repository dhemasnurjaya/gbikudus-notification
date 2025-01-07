// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotificationDtoImpl _$$GetNotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotificationDtoImpl(
      id: json['id'] as String,
      topic: json['topic'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      schedule: json['schedule'] as String,
    );

Map<String, dynamic> _$$GetNotificationDtoImplToJson(
        _$GetNotificationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'title': instance.title,
      'body': instance.body,
      'schedule': instance.schedule,
    };
