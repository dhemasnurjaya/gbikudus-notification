// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateNotificationDtoImpl _$$CreateNotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateNotificationDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      sendDate: DateTime.parse(json['sendDate'] as String),
    );

Map<String, dynamic> _$$CreateNotificationDtoImplToJson(
        _$CreateNotificationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sendDate': instance.sendDate.toIso8601String(),
    };
