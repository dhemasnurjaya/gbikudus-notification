// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'church_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChurchEvent {
  int get id => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  bool get isNotificationSent => throw _privateConstructorUsedError;

  /// Create a copy of ChurchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChurchEventCopyWith<ChurchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChurchEventCopyWith<$Res> {
  factory $ChurchEventCopyWith(
          ChurchEvent value, $Res Function(ChurchEvent) then) =
      _$ChurchEventCopyWithImpl<$Res, ChurchEvent>;
  @useResult
  $Res call(
      {int id,
      DateTime startDate,
      DateTime endDate,
      String title,
      String image,
      bool isNotificationSent});
}

/// @nodoc
class _$ChurchEventCopyWithImpl<$Res, $Val extends ChurchEvent>
    implements $ChurchEventCopyWith<$Res> {
  _$ChurchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChurchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? title = null,
    Object? image = null,
    Object? isNotificationSent = null,
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
      isNotificationSent: null == isNotificationSent
          ? _value.isNotificationSent
          : isNotificationSent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChurchEventImplCopyWith<$Res>
    implements $ChurchEventCopyWith<$Res> {
  factory _$$ChurchEventImplCopyWith(
          _$ChurchEventImpl value, $Res Function(_$ChurchEventImpl) then) =
      __$$ChurchEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime startDate,
      DateTime endDate,
      String title,
      String image,
      bool isNotificationSent});
}

/// @nodoc
class __$$ChurchEventImplCopyWithImpl<$Res>
    extends _$ChurchEventCopyWithImpl<$Res, _$ChurchEventImpl>
    implements _$$ChurchEventImplCopyWith<$Res> {
  __$$ChurchEventImplCopyWithImpl(
      _$ChurchEventImpl _value, $Res Function(_$ChurchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChurchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? title = null,
    Object? image = null,
    Object? isNotificationSent = null,
  }) {
    return _then(_$ChurchEventImpl(
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
      isNotificationSent: null == isNotificationSent
          ? _value.isNotificationSent
          : isNotificationSent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChurchEventImpl implements _ChurchEvent {
  const _$ChurchEventImpl(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.title,
      required this.image,
      required this.isNotificationSent});

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
  final bool isNotificationSent;

  @override
  String toString() {
    return 'ChurchEvent(id: $id, startDate: $startDate, endDate: $endDate, title: $title, image: $image, isNotificationSent: $isNotificationSent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChurchEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isNotificationSent, isNotificationSent) ||
                other.isNotificationSent == isNotificationSent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, startDate, endDate, title, image, isNotificationSent);

  /// Create a copy of ChurchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChurchEventImplCopyWith<_$ChurchEventImpl> get copyWith =>
      __$$ChurchEventImplCopyWithImpl<_$ChurchEventImpl>(this, _$identity);
}

abstract class _ChurchEvent implements ChurchEvent {
  const factory _ChurchEvent(
      {required final int id,
      required final DateTime startDate,
      required final DateTime endDate,
      required final String title,
      required final String image,
      required final bool isNotificationSent}) = _$ChurchEventImpl;

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
  bool get isNotificationSent;

  /// Create a copy of ChurchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChurchEventImplCopyWith<_$ChurchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
