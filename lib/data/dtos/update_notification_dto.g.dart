// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateNotificationDtoImpl _$$UpdateNotificationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateNotificationDtoImpl(
      title: json['title'] as String?,
      sendDate: json['sendDate'] == null
          ? null
          : DateTime.parse(json['sendDate'] as String),
      isSent: json['isSent'] as bool?,
    );

Map<String, dynamic> _$$UpdateNotificationDtoImplToJson(
        _$UpdateNotificationDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'sendDate': instance.sendDate?.toIso8601String(),
      'isSent': instance.isSent,
    };
