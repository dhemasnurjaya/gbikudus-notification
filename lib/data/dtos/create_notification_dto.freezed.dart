// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateNotificationDto _$CreateNotificationDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateNotificationDto.fromJson(json);
}

/// @nodoc
mixin _$CreateNotificationDto {
  String get id => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get schedule => throw _privateConstructorUsedError;

  /// Serializes this CreateNotificationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateNotificationDtoCopyWith<CreateNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateNotificationDtoCopyWith<$Res> {
  factory $CreateNotificationDtoCopyWith(CreateNotificationDto value,
          $Res Function(CreateNotificationDto) then) =
      _$CreateNotificationDtoCopyWithImpl<$Res, CreateNotificationDto>;
  @useResult
  $Res call(
      {String id, String topic, String title, String body, String schedule});
}

/// @nodoc
class _$CreateNotificationDtoCopyWithImpl<$Res,
        $Val extends CreateNotificationDto>
    implements $CreateNotificationDtoCopyWith<$Res> {
  _$CreateNotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? title = null,
    Object? body = null,
    Object? schedule = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateNotificationDtoImplCopyWith<$Res>
    implements $CreateNotificationDtoCopyWith<$Res> {
  factory _$$CreateNotificationDtoImplCopyWith(
          _$CreateNotificationDtoImpl value,
          $Res Function(_$CreateNotificationDtoImpl) then) =
      __$$CreateNotificationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String topic, String title, String body, String schedule});
}

/// @nodoc
class __$$CreateNotificationDtoImplCopyWithImpl<$Res>
    extends _$CreateNotificationDtoCopyWithImpl<$Res,
        _$CreateNotificationDtoImpl>
    implements _$$CreateNotificationDtoImplCopyWith<$Res> {
  __$$CreateNotificationDtoImplCopyWithImpl(_$CreateNotificationDtoImpl _value,
      $Res Function(_$CreateNotificationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? topic = null,
    Object? title = null,
    Object? body = null,
    Object? schedule = null,
  }) {
    return _then(_$CreateNotificationDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      schedule: null == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateNotificationDtoImpl implements _CreateNotificationDto {
  const _$CreateNotificationDtoImpl(
      {required this.id,
      required this.topic,
      required this.title,
      required this.body,
      required this.schedule});

  factory _$CreateNotificationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateNotificationDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String topic;
  @override
  final String title;
  @override
  final String body;
  @override
  final String schedule;

  @override
  String toString() {
    return 'CreateNotificationDto(id: $id, topic: $topic, title: $title, body: $body, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNotificationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, topic, title, body, schedule);

  /// Create a copy of CreateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNotificationDtoImplCopyWith<_$CreateNotificationDtoImpl>
      get copyWith => __$$CreateNotificationDtoImplCopyWithImpl<
          _$CreateNotificationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateNotificationDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateNotificationDto implements CreateNotificationDto {
  const factory _CreateNotificationDto(
      {required final String id,
      required final String topic,
      required final String title,
      required final String body,
      required final String schedule}) = _$CreateNotificationDtoImpl;

  factory _CreateNotificationDto.fromJson(Map<String, dynamic> json) =
      _$CreateNotificationDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get topic;
  @override
  String get title;
  @override
  String get body;
  @override
  String get schedule;

  /// Create a copy of CreateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateNotificationDtoImplCopyWith<_$CreateNotificationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
