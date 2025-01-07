// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateNotificationDto _$UpdateNotificationDtoFromJson(
    Map<String, dynamic> json) {
  return _UpdateNotificationDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateNotificationDto {
  String? get topic => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get schedule => throw _privateConstructorUsedError;

  /// Serializes this UpdateNotificationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateNotificationDtoCopyWith<UpdateNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNotificationDtoCopyWith<$Res> {
  factory $UpdateNotificationDtoCopyWith(UpdateNotificationDto value,
          $Res Function(UpdateNotificationDto) then) =
      _$UpdateNotificationDtoCopyWithImpl<$Res, UpdateNotificationDto>;
  @useResult
  $Res call({String? topic, String? title, String? body, String? schedule});
}

/// @nodoc
class _$UpdateNotificationDtoCopyWithImpl<$Res,
        $Val extends UpdateNotificationDto>
    implements $UpdateNotificationDtoCopyWith<$Res> {
  _$UpdateNotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_value.copyWith(
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateNotificationDtoImplCopyWith<$Res>
    implements $UpdateNotificationDtoCopyWith<$Res> {
  factory _$$UpdateNotificationDtoImplCopyWith(
          _$UpdateNotificationDtoImpl value,
          $Res Function(_$UpdateNotificationDtoImpl) then) =
      __$$UpdateNotificationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? topic, String? title, String? body, String? schedule});
}

/// @nodoc
class __$$UpdateNotificationDtoImplCopyWithImpl<$Res>
    extends _$UpdateNotificationDtoCopyWithImpl<$Res,
        _$UpdateNotificationDtoImpl>
    implements _$$UpdateNotificationDtoImplCopyWith<$Res> {
  __$$UpdateNotificationDtoImplCopyWithImpl(_$UpdateNotificationDtoImpl _value,
      $Res Function(_$UpdateNotificationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topic = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? schedule = freezed,
  }) {
    return _then(_$UpdateNotificationDtoImpl(
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      schedule: freezed == schedule
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateNotificationDtoImpl implements _UpdateNotificationDto {
  const _$UpdateNotificationDtoImpl(
      {this.topic, this.title, this.body, this.schedule});

  factory _$UpdateNotificationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateNotificationDtoImplFromJson(json);

  @override
  final String? topic;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? schedule;

  @override
  String toString() {
    return 'UpdateNotificationDto(topic: $topic, title: $title, body: $body, schedule: $schedule)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNotificationDtoImpl &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.schedule, schedule) ||
                other.schedule == schedule));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, topic, title, body, schedule);

  /// Create a copy of UpdateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNotificationDtoImplCopyWith<_$UpdateNotificationDtoImpl>
      get copyWith => __$$UpdateNotificationDtoImplCopyWithImpl<
          _$UpdateNotificationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateNotificationDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateNotificationDto implements UpdateNotificationDto {
  const factory _UpdateNotificationDto(
      {final String? topic,
      final String? title,
      final String? body,
      final String? schedule}) = _$UpdateNotificationDtoImpl;

  factory _UpdateNotificationDto.fromJson(Map<String, dynamic> json) =
      _$UpdateNotificationDtoImpl.fromJson;

  @override
  String? get topic;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get schedule;

  /// Create a copy of UpdateNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNotificationDtoImplCopyWith<_$UpdateNotificationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
