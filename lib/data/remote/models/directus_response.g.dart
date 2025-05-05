// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'directus_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DirectusMetaImpl _$$DirectusMetaImplFromJson(Map<String, dynamic> json) =>
    _$DirectusMetaImpl(
      totalCount: (json['total_count'] as num?)?.toInt(),
      filterCount: (json['filter_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DirectusMetaImplToJson(_$DirectusMetaImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'filter_count': instance.filterCount,
    };

_$DirectusErrorImpl _$$DirectusErrorImplFromJson(Map<String, dynamic> json) =>
    _$DirectusErrorImpl(
      json['message'] as String,
    );

Map<String, dynamic> _$$DirectusErrorImplToJson(_$DirectusErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$DirectusResponseImpl<T> _$$DirectusResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$DirectusResponseImpl<T>(
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
      meta: json['meta'] == null
          ? null
          : DirectusMeta.fromJson(json['meta'] as Map<String, dynamic>),
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => DirectusError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DirectusResponseImplToJson<T>(
  _$DirectusResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data?.map(toJsonT).toList(),
      'meta': instance.meta,
      'errors': instance.errors,
    };
