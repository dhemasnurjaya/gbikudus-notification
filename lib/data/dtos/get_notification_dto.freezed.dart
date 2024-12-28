// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetNotificationDto _$GetNotificationDtoFromJson(Map<String, dynamic> json) {
  return _GetNotificationDto.fromJson(json);
}

/// @nodoc
mixin _$GetNotificationDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get sendDate => throw _privateConstructorUsedError;

  /// Serializes this GetNotificationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetNotificationDtoCopyWith<GetNotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationDtoCopyWith<$Res> {
  factory $GetNotificationDtoCopyWith(
          GetNotificationDto value, $Res Function(GetNotificationDto) then) =
      _$GetNotificationDtoCopyWithImpl<$Res, GetNotificationDto>;
  @useResult
  $Res call({String id, String title, DateTime sendDate});
}

/// @nodoc
class _$GetNotificationDtoCopyWithImpl<$Res, $Val extends GetNotificationDto>
    implements $GetNotificationDtoCopyWith<$Res> {
  _$GetNotificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sendDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sendDate: null == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNotificationDtoImplCopyWith<$Res>
    implements $GetNotificationDtoCopyWith<$Res> {
  factory _$$GetNotificationDtoImplCopyWith(_$GetNotificationDtoImpl value,
          $Res Function(_$GetNotificationDtoImpl) then) =
      __$$GetNotificationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, DateTime sendDate});
}

/// @nodoc
class __$$GetNotificationDtoImplCopyWithImpl<$Res>
    extends _$GetNotificationDtoCopyWithImpl<$Res, _$GetNotificationDtoImpl>
    implements _$$GetNotificationDtoImplCopyWith<$Res> {
  __$$GetNotificationDtoImplCopyWithImpl(_$GetNotificationDtoImpl _value,
      $Res Function(_$GetNotificationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sendDate = null,
  }) {
    return _then(_$GetNotificationDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sendDate: null == sendDate
          ? _value.sendDate
          : sendDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNotificationDtoImpl implements _GetNotificationDto {
  const _$GetNotificationDtoImpl(
      {required this.id, required this.title, required this.sendDate});

  factory _$GetNotificationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetNotificationDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime sendDate;

  @override
  String toString() {
    return 'GetNotificationDto(id: $id, title: $title, sendDate: $sendDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sendDate, sendDate) ||
                other.sendDate == sendDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, sendDate);

  /// Create a copy of GetNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationDtoImplCopyWith<_$GetNotificationDtoImpl> get copyWith =>
      __$$GetNotificationDtoImplCopyWithImpl<_$GetNotificationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNotificationDtoImplToJson(
      this,
    );
  }
}

abstract class _GetNotificationDto implements GetNotificationDto {
  const factory _GetNotificationDto(
      {required final String id,
      required final String title,
      required final DateTime sendDate}) = _$GetNotificationDtoImpl;

  factory _GetNotificationDto.fromJson(Map<String, dynamic> json) =
      _$GetNotificationDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get sendDate;

  /// Create a copy of GetNotificationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNotificationDtoImplCopyWith<_$GetNotificationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
