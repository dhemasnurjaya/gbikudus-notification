// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directus_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DirectusMeta _$DirectusMetaFromJson(Map<String, dynamic> json) {
  return _DirectusMeta.fromJson(json);
}

/// @nodoc
mixin _$DirectusMeta {
  @JsonKey(name: 'total_count')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'filter_count')
  int? get filterCount => throw _privateConstructorUsedError;

  /// Serializes this DirectusMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DirectusMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectusMetaCopyWith<DirectusMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectusMetaCopyWith<$Res> {
  factory $DirectusMetaCopyWith(
          DirectusMeta value, $Res Function(DirectusMeta) then) =
      _$DirectusMetaCopyWithImpl<$Res, DirectusMeta>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'filter_count') int? filterCount});
}

/// @nodoc
class _$DirectusMetaCopyWithImpl<$Res, $Val extends DirectusMeta>
    implements $DirectusMetaCopyWith<$Res> {
  _$DirectusMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DirectusMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? filterCount = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      filterCount: freezed == filterCount
          ? _value.filterCount
          : filterCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectusMetaImplCopyWith<$Res>
    implements $DirectusMetaCopyWith<$Res> {
  factory _$$DirectusMetaImplCopyWith(
          _$DirectusMetaImpl value, $Res Function(_$DirectusMetaImpl) then) =
      __$$DirectusMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int? totalCount,
      @JsonKey(name: 'filter_count') int? filterCount});
}

/// @nodoc
class __$$DirectusMetaImplCopyWithImpl<$Res>
    extends _$DirectusMetaCopyWithImpl<$Res, _$DirectusMetaImpl>
    implements _$$DirectusMetaImplCopyWith<$Res> {
  __$$DirectusMetaImplCopyWithImpl(
      _$DirectusMetaImpl _value, $Res Function(_$DirectusMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of DirectusMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? filterCount = freezed,
  }) {
    return _then(_$DirectusMetaImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      filterCount: freezed == filterCount
          ? _value.filterCount
          : filterCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectusMetaImpl implements _DirectusMeta {
  _$DirectusMetaImpl(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'filter_count') required this.filterCount});

  factory _$DirectusMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectusMetaImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int? totalCount;
  @override
  @JsonKey(name: 'filter_count')
  final int? filterCount;

  @override
  String toString() {
    return 'DirectusMeta(totalCount: $totalCount, filterCount: $filterCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectusMetaImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.filterCount, filterCount) ||
                other.filterCount == filterCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, filterCount);

  /// Create a copy of DirectusMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectusMetaImplCopyWith<_$DirectusMetaImpl> get copyWith =>
      __$$DirectusMetaImplCopyWithImpl<_$DirectusMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectusMetaImplToJson(
      this,
    );
  }
}

abstract class _DirectusMeta implements DirectusMeta {
  factory _DirectusMeta(
          {@JsonKey(name: 'total_count') required final int? totalCount,
          @JsonKey(name: 'filter_count') required final int? filterCount}) =
      _$DirectusMetaImpl;

  factory _DirectusMeta.fromJson(Map<String, dynamic> json) =
      _$DirectusMetaImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int? get totalCount;
  @override
  @JsonKey(name: 'filter_count')
  int? get filterCount;

  /// Create a copy of DirectusMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectusMetaImplCopyWith<_$DirectusMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectusError _$DirectusErrorFromJson(Map<String, dynamic> json) {
  return _DirectusError.fromJson(json);
}

/// @nodoc
mixin _$DirectusError {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this DirectusError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DirectusError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectusErrorCopyWith<DirectusError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectusErrorCopyWith<$Res> {
  factory $DirectusErrorCopyWith(
          DirectusError value, $Res Function(DirectusError) then) =
      _$DirectusErrorCopyWithImpl<$Res, DirectusError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$DirectusErrorCopyWithImpl<$Res, $Val extends DirectusError>
    implements $DirectusErrorCopyWith<$Res> {
  _$DirectusErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DirectusError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectusErrorImplCopyWith<$Res>
    implements $DirectusErrorCopyWith<$Res> {
  factory _$$DirectusErrorImplCopyWith(
          _$DirectusErrorImpl value, $Res Function(_$DirectusErrorImpl) then) =
      __$$DirectusErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DirectusErrorImplCopyWithImpl<$Res>
    extends _$DirectusErrorCopyWithImpl<$Res, _$DirectusErrorImpl>
    implements _$$DirectusErrorImplCopyWith<$Res> {
  __$$DirectusErrorImplCopyWithImpl(
      _$DirectusErrorImpl _value, $Res Function(_$DirectusErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DirectusError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DirectusErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DirectusErrorImpl implements _DirectusError {
  _$DirectusErrorImpl(this.message);

  factory _$DirectusErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DirectusErrorImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'DirectusError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectusErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DirectusError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectusErrorImplCopyWith<_$DirectusErrorImpl> get copyWith =>
      __$$DirectusErrorImplCopyWithImpl<_$DirectusErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DirectusErrorImplToJson(
      this,
    );
  }
}

abstract class _DirectusError implements DirectusError {
  factory _DirectusError(final String message) = _$DirectusErrorImpl;

  factory _DirectusError.fromJson(Map<String, dynamic> json) =
      _$DirectusErrorImpl.fromJson;

  @override
  String get message;

  /// Create a copy of DirectusError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectusErrorImplCopyWith<_$DirectusErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DirectusResponse<T> _$DirectusResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _DirectusResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$DirectusResponse<T> {
  List<T>? get data => throw _privateConstructorUsedError;
  DirectusMeta? get meta => throw _privateConstructorUsedError;
  List<DirectusError>? get errors => throw _privateConstructorUsedError;

  /// Serializes this DirectusResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DirectusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectusResponseCopyWith<T, DirectusResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectusResponseCopyWith<T, $Res> {
  factory $DirectusResponseCopyWith(
          DirectusResponse<T> value, $Res Function(DirectusResponse<T>) then) =
      _$DirectusResponseCopyWithImpl<T, $Res, DirectusResponse<T>>;
  @useResult
  $Res call({List<T>? data, DirectusMeta? meta, List<DirectusError>? errors});

  $DirectusMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DirectusResponseCopyWithImpl<T, $Res, $Val extends DirectusResponse<T>>
    implements $DirectusResponseCopyWith<T, $Res> {
  _$DirectusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DirectusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DirectusMeta?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<DirectusError>?,
    ) as $Val);
  }

  /// Create a copy of DirectusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DirectusMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $DirectusMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DirectusResponseImplCopyWith<T, $Res>
    implements $DirectusResponseCopyWith<T, $Res> {
  factory _$$DirectusResponseImplCopyWith(_$DirectusResponseImpl<T> value,
          $Res Function(_$DirectusResponseImpl<T>) then) =
      __$$DirectusResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T>? data, DirectusMeta? meta, List<DirectusError>? errors});

  @override
  $DirectusMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$DirectusResponseImplCopyWithImpl<T, $Res>
    extends _$DirectusResponseCopyWithImpl<T, $Res, _$DirectusResponseImpl<T>>
    implements _$$DirectusResponseImplCopyWith<T, $Res> {
  __$$DirectusResponseImplCopyWithImpl(_$DirectusResponseImpl<T> _value,
      $Res Function(_$DirectusResponseImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DirectusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$DirectusResponseImpl<T>(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DirectusMeta?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<DirectusError>?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$DirectusResponseImpl<T> implements _DirectusResponse<T> {
  _$DirectusResponseImpl(
      {required final List<T>? data,
      required this.meta,
      required final List<DirectusError>? errors})
      : _data = data,
        _errors = errors;

  factory _$DirectusResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$DirectusResponseImplFromJson(json, fromJsonT);

  final List<T>? _data;
  @override
  List<T>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DirectusMeta? meta;
  final List<DirectusError>? _errors;
  @override
  List<DirectusError>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DirectusResponse<$T>(data: $data, meta: $meta, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectusResponseImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      meta,
      const DeepCollectionEquality().hash(_errors));

  /// Create a copy of DirectusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectusResponseImplCopyWith<T, _$DirectusResponseImpl<T>> get copyWith =>
      __$$DirectusResponseImplCopyWithImpl<T, _$DirectusResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$DirectusResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _DirectusResponse<T> implements DirectusResponse<T> {
  factory _DirectusResponse(
      {required final List<T>? data,
      required final DirectusMeta? meta,
      required final List<DirectusError>? errors}) = _$DirectusResponseImpl<T>;

  factory _DirectusResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$DirectusResponseImpl<T>.fromJson;

  @override
  List<T>? get data;
  @override
  DirectusMeta? get meta;
  @override
  List<DirectusError>? get errors;

  /// Create a copy of DirectusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectusResponseImplCopyWith<T, _$DirectusResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
