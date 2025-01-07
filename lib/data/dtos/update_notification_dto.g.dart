// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateNotificationDtoImpl _$$UpdateNotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateNotificationDtoImpl(
      topic: json['topic'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      schedule: json['schedule'] as String?,
    );

Map<String, dynamic> _$$UpdateNotificationDtoImplToJson(
        _$UpdateNotificationDtoImpl instance) =>
    <String, dynamic>{
      'topic': instance.topic,
      'title': instance.title,
      'body': instance.body,
      'schedule': instance.schedule,
    };
