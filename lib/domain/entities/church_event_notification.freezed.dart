// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'church_event_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChurchEventNotification {
  int get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;

  /// Create a copy of ChurchEventNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChurchEventNotificationCopyWith<ChurchEventNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChurchEventNotificationCopyWith<$Res> {
  factory $ChurchEventNotificationCopyWith(ChurchEventNotification value,
          $Res Function(ChurchEventNotification) then) =
      _$ChurchEventNotificationCopyWithImpl<$Res, ChurchEventNotification>;
  @useResult
  $Res call(
      {int id,
      DateTime startDate,
      DateTime endDate,
      String title,
      String image,
      DateTime? sentAt});
}

/// @nodoc
class _$ChurchEventNotificationCopyWithImpl<$Res,
        $Val extends ChurchEventNotification>
    implements $ChurchEventNotificationCopyWith<$Res> {
  _$ChurchEventNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChurchEventNotification
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
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$ChurchEventNotificationImplCopyWith<$Res>
    implements $ChurchEventNotificationCopyWith<$Res> {
  factory _$$ChurchEventNotificationImplCopyWith(
          _$ChurchEventNotificationImpl value,
          $Res Function(_$ChurchEventNotificationImpl) then) =
      __$$ChurchEventNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime startDate,
      DateTime endDate,
      String title,
      String image,
      DateTime? sentAt});
}

/// @nodoc
class __$$ChurchEventNotificationImplCopyWithImpl<$Res>
    extends _$ChurchEventNotificationCopyWithImpl<$Res,
        _$ChurchEventNotificationImpl>
    implements _$$ChurchEventNotificationImplCopyWith<$Res> {
  __$$ChurchEventNotificationImplCopyWithImpl(
      _$ChurchEventNotificationImpl _value,
      $Res Function(_$ChurchEventNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChurchEventNotification
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
    return _then(_$ChurchEventNotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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

class _$ChurchEventNotificationImpl implements _ChurchEventNotification {
  const _$ChurchEventNotificationImpl(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.title,
      required this.image,
      this.sentAt});

  @override
  final int id;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String title;
  @override
  final String image;
  @override
  final DateTime? sentAt;

  @override
  String toString() {
    return 'ChurchEventNotification(id: $id, startDate: $startDate, endDate: $endDate, title: $title, image: $image, sentAt: $sentAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChurchEventNotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, startDate, endDate, title, image, sentAt);

  /// Create a copy of ChurchEventNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChurchEventNotificationImplCopyWith<_$ChurchEventNotificationImpl>
      get copyWith => __$$ChurchEventNotificationImplCopyWithImpl<
          _$ChurchEventNotificationImpl>(this, _$identity);
}

abstract class _ChurchEventNotification implements ChurchEventNotification {
  const factory _ChurchEventNotification(
      {required final int id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String title,
      required final String image,
      final DateTime? sentAt}) = _$ChurchEventNotificationImpl;

  @override
  int get id;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  String get title;
  @override
  String get image;
  @override
  DateTime? get sentAt;

  /// Create a copy of ChurchEventNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChurchEventNotificationImplCopyWith<_$ChurchEventNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
