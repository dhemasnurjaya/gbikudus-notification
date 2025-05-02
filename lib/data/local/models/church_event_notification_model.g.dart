// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'church_event_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChurchEventNotificationModelImpl _$$ChurchEventNotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChurchEventNotificationModelImpl(
      id: (json['id'] as num).toInt(),
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      isNotificationSent: json['isNotificationSent'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChurchEventNotificationModelImplToJson(
        _$ChurchEventNotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'title': instance.title,
      'image': instance.image,
      'isNotificationSent': instance.isNotificationSent,
    };
