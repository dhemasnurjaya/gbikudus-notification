// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'church_event_notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChurchEventNotificationModel _$ChurchEventNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _ChurchEventNotificationModel.fromJson(json);
}

/// @nodoc
mixin _$ChurchEventNotificationModel {
  int get id => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;

  /// Serializes this ChurchEventNotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChurchEventNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChurchEventNotificationModelCopyWith<ChurchEventNotificationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChurchEventNotificationModelCopyWith<$Res> {
  factory $ChurchEventNotificationModelCopyWith(
          ChurchEventNotificationModel value,
          $Res Function(ChurchEventNotificationModel) then) =
      _$ChurchEventNotificationModelCopyWithImpl<$Res,
          ChurchEventNotificationModel>;
  @useResult
  $Res call(
      {int id,
      String startDate,
      String endDate,
      String title,
      String image,
      DateTime? sentAt});
}

/// @nodoc
class _$ChurchEventNotificationModelCopyWithImpl<$Res,
        $Val extends ChurchEventNotificationModel>
    implements $ChurchEventNotificationModelCopyWith<$Res> {
  _$ChurchEventNotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChurchEventNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? title = null,
    Object? image = null,
    Object? sentAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChurchEventNotificationModelImplCopyWith<$Res>
    implements $ChurchEventNotificationModelCopyWith<$Res> {
  factory _$$ChurchEventNotificationModelImplCopyWith(
          _$ChurchEventNotificationModelImpl value,
          $Res Function(_$ChurchEventNotificationModelImpl) then) =
      __$$ChurchEventNotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String startDate,
      String endDate,
      String title,
      String image,
      DateTime? sentAt});
}

/// @nodoc
class __$$ChurchEventNotificationModelImplCopyWithImpl<$Res>
    extends _$ChurchEventNotificationModelCopyWithImpl<$Res,
        _$ChurchEventNotificationModelImpl>
    implements _$$ChurchEventNotificationModelImplCopyWith<$Res> {
  __$$ChurchEventNotificationModelImplCopyWithImpl(
      _$ChurchEventNotificationModelImpl _value,
      $Res Function(_$ChurchEventNotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChurchEventNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? title = null,
    Object? image = null,
    Object? sentAt = freezed,
  }) {
    return _then(_$ChurchEventNotificationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChurchEventNotificationModelImpl extends _ChurchEventNotificationModel {
  _$ChurchEventNotificationModelImpl(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.title,
      required this.image,
      this.sentAt})
      : super._();

  factory _$ChurchEventNotificationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChurchEventNotificationModelImplFromJson(json);

  @override
  final int id;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String title;
  @override
  final String image;
  @override
  final DateTime? sentAt;

  @override
  String toString() {
    return 'ChurchEventNotificationModel(id: $id, startDate: $startDate, endDate: $endDate, title: $title, image: $image, sentAt: $sentAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChurchEventNotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, startDate, endDate, title, image, sentAt);

  /// Create a copy of ChurchEventNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChurchEventNotificationModelImplCopyWith<
          _$ChurchEventNotificationModelImpl>
      get copyWith => __$$ChurchEventNotificationModelImplCopyWithImpl<
          _$ChurchEventNotificationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChurchEventNotificationModelImplToJson(
      this,
    );
  }
}

abstract class _ChurchEventNotificationModel
    extends ChurchEventNotificationModel {
  factory _ChurchEventNotificationModel(
      {required final int id,
      required final String startDate,
      required final String endDate,
      required final String title,
      required final String image,
      final DateTime? sentAt}) = _$ChurchEventNotificationModelImpl;
  _ChurchEventNotificationModel._() : super._();

  factory _ChurchEventNotificationModel.fromJson(Map<String, dynamic> json) =
      _$ChurchEventNotificationModelImpl.fromJson;

  @override
  int get id;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  String get title;
  @override
  String get image;
  @override
  DateTime? get sentAt;

  /// Create a copy of ChurchEventNotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChurchEventNotificationModelImplCopyWith<
          _$ChurchEventNotificationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
