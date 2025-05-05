// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'church_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChurchEventModelImpl _$$ChurchEventModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChurchEventModelImpl(
      id: (json['id'] as num).toInt(),
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$ChurchEventModelImplToJson(
        _$ChurchEventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
    };
