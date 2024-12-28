// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetNotificationDtoImpl _$$GetNotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetNotificationDtoImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      sendDate: DateTime.parse(json['sendDate'] as String),
    );

Map<String, dynamic> _$$GetNotificationDtoImplToJson(
        _$GetNotificationDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sendDate': instance.sendDate.toIso8601String(),
    };
