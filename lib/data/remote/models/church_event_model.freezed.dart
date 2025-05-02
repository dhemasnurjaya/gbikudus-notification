// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'church_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChurchEventModel _$ChurchEventModelFromJson(Map<String, dynamic> json) {
  return _ChurchEventModel.fromJson(json);
}

/// @nodoc
mixin _$ChurchEventModel {
  int get id => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this ChurchEventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChurchEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChurchEventModelCopyWith<ChurchEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChurchEventModelCopyWith<$Res> {
  factory $ChurchEventModelCopyWith(
          ChurchEventModel value, $Res Function(ChurchEventModel) then) =
      _$ChurchEventModelCopyWithImpl<$Res, ChurchEventModel>;
  @useResult
  $Res call(
      {int id, String startDate, String endDate, String title, String image});
}

/// @nodoc
class _$ChurchEventModelCopyWithImpl<$Res, $Val extends ChurchEventModel>
    implements $ChurchEventModelCopyWith<$Res> {
  _$ChurchEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChurchEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? title = null,
    Object? image = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChurchEventModelImplCopyWith<$Res>
    implements $ChurchEventModelCopyWith<$Res> {
  factory _$$ChurchEventModelImplCopyWith(_$ChurchEventModelImpl value,
          $Res Function(_$ChurchEventModelImpl) then) =
      __$$ChurchEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String startDate, String endDate, String title, String image});
}

/// @nodoc
class __$$ChurchEventModelImplCopyWithImpl<$Res>
    extends _$ChurchEventModelCopyWithImpl<$Res, _$ChurchEventModelImpl>
    implements _$$ChurchEventModelImplCopyWith<$Res> {
  __$$ChurchEventModelImplCopyWithImpl(_$ChurchEventModelImpl _value,
      $Res Function(_$ChurchEventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChurchEventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$ChurchEventModelImpl(
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
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ChurchEventModelImpl implements _ChurchEventModel {
  const _$ChurchEventModelImpl(
      {required this.id,
      required this.startDate,
      required this.endDate,
      required this.title,
      required this.image});

  factory _$ChurchEventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChurchEventModelImplFromJson(json);

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
  String toString() {
    return 'ChurchEventModel(id: $id, startDate: $startDate, endDate: $endDate, title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChurchEventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, startDate, endDate, title, image);

  /// Create a copy of ChurchEventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChurchEventModelImplCopyWith<_$ChurchEventModelImpl> get copyWith =>
      __$$ChurchEventModelImplCopyWithImpl<_$ChurchEventModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChurchEventModelImplToJson(
      this,
    );
  }
}

abstract class _ChurchEventModel implements ChurchEventModel {
  const factory _ChurchEventModel(
      {required final int id,
      required final String startDate,
      required final String endDate,
      required final String title,
      required final String image}) = _$ChurchEventModelImpl;

  factory _ChurchEventModel.fromJson(Map<String, dynamic> json) =
      _$ChurchEventModelImpl.fromJson;

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

  /// Create a copy of ChurchEventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChurchEventModelImplCopyWith<_$ChurchEventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
