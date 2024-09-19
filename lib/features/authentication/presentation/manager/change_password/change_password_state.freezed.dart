// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangePasswordState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChangePasswordLoading<T> value) loading,
    required TResult Function(ChangePasswordSuccess<T> value) success,
    required TResult Function(ChangePasswordError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChangePasswordLoading<T> value)? loading,
    TResult? Function(ChangePasswordSuccess<T> value)? success,
    TResult? Function(ChangePasswordError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChangePasswordLoading<T> value)? loading,
    TResult Function(ChangePasswordSuccess<T> value)? success,
    TResult Function(ChangePasswordError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<T, $Res> {
  factory $ChangePasswordStateCopyWith(ChangePasswordState<T> value,
          $Res Function(ChangePasswordState<T>) then) =
      _$ChangePasswordStateCopyWithImpl<T, $Res, ChangePasswordState<T>>;
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<T, $Res,
        $Val extends ChangePasswordState<T>>
    implements $ChangePasswordStateCopyWith<T, $Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$ChangePasswordStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChangePasswordState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChangePasswordLoading<T> value) loading,
    required TResult Function(ChangePasswordSuccess<T> value) success,
    required TResult Function(ChangePasswordError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChangePasswordLoading<T> value)? loading,
    TResult? Function(ChangePasswordSuccess<T> value)? success,
    TResult? Function(ChangePasswordError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChangePasswordLoading<T> value)? loading,
    TResult Function(ChangePasswordSuccess<T> value)? success,
    TResult Function(ChangePasswordError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ChangePasswordState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ChangePasswordLoadingImplCopyWith<T, $Res> {
  factory _$$ChangePasswordLoadingImplCopyWith(
          _$ChangePasswordLoadingImpl<T> value,
          $Res Function(_$ChangePasswordLoadingImpl<T>) then) =
      __$$ChangePasswordLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ChangePasswordLoadingImplCopyWithImpl<T, $Res>
    extends _$ChangePasswordStateCopyWithImpl<T, $Res,
        _$ChangePasswordLoadingImpl<T>>
    implements _$$ChangePasswordLoadingImplCopyWith<T, $Res> {
  __$$ChangePasswordLoadingImplCopyWithImpl(
      _$ChangePasswordLoadingImpl<T> _value,
      $Res Function(_$ChangePasswordLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangePasswordLoadingImpl<T> implements ChangePasswordLoading<T> {
  const _$ChangePasswordLoadingImpl();

  @override
  String toString() {
    return 'ChangePasswordState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChangePasswordLoading<T> value) loading,
    required TResult Function(ChangePasswordSuccess<T> value) success,
    required TResult Function(ChangePasswordError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChangePasswordLoading<T> value)? loading,
    TResult? Function(ChangePasswordSuccess<T> value)? success,
    TResult? Function(ChangePasswordError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChangePasswordLoading<T> value)? loading,
    TResult Function(ChangePasswordSuccess<T> value)? success,
    TResult Function(ChangePasswordError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordLoading<T> implements ChangePasswordState<T> {
  const factory ChangePasswordLoading() = _$ChangePasswordLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ChangePasswordSuccessImplCopyWith<T, $Res> {
  factory _$$ChangePasswordSuccessImplCopyWith(
          _$ChangePasswordSuccessImpl<T> value,
          $Res Function(_$ChangePasswordSuccessImpl<T>) then) =
      __$$ChangePasswordSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ChangePasswordSuccessImplCopyWithImpl<T, $Res>
    extends _$ChangePasswordStateCopyWithImpl<T, $Res,
        _$ChangePasswordSuccessImpl<T>>
    implements _$$ChangePasswordSuccessImplCopyWith<T, $Res> {
  __$$ChangePasswordSuccessImplCopyWithImpl(
      _$ChangePasswordSuccessImpl<T> _value,
      $Res Function(_$ChangePasswordSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChangePasswordSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ChangePasswordSuccessImpl<T> implements ChangePasswordSuccess<T> {
  const _$ChangePasswordSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ChangePasswordState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordSuccessImplCopyWith<T, _$ChangePasswordSuccessImpl<T>>
      get copyWith => __$$ChangePasswordSuccessImplCopyWithImpl<T,
          _$ChangePasswordSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChangePasswordLoading<T> value) loading,
    required TResult Function(ChangePasswordSuccess<T> value) success,
    required TResult Function(ChangePasswordError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChangePasswordLoading<T> value)? loading,
    TResult? Function(ChangePasswordSuccess<T> value)? success,
    TResult? Function(ChangePasswordError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChangePasswordLoading<T> value)? loading,
    TResult Function(ChangePasswordSuccess<T> value)? success,
    TResult Function(ChangePasswordError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordSuccess<T> implements ChangePasswordState<T> {
  const factory ChangePasswordSuccess(final T data) =
      _$ChangePasswordSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ChangePasswordSuccessImplCopyWith<T, _$ChangePasswordSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordErrorImplCopyWith<T, $Res> {
  factory _$$ChangePasswordErrorImplCopyWith(_$ChangePasswordErrorImpl<T> value,
          $Res Function(_$ChangePasswordErrorImpl<T>) then) =
      __$$ChangePasswordErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ChangePasswordErrorImplCopyWithImpl<T, $Res>
    extends _$ChangePasswordStateCopyWithImpl<T, $Res,
        _$ChangePasswordErrorImpl<T>>
    implements _$$ChangePasswordErrorImplCopyWith<T, $Res> {
  __$$ChangePasswordErrorImplCopyWithImpl(_$ChangePasswordErrorImpl<T> _value,
      $Res Function(_$ChangePasswordErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ChangePasswordErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordErrorImpl<T> implements ChangePasswordError<T> {
  const _$ChangePasswordErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ChangePasswordState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordErrorImplCopyWith<T, _$ChangePasswordErrorImpl<T>>
      get copyWith => __$$ChangePasswordErrorImplCopyWithImpl<T,
          _$ChangePasswordErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ChangePasswordLoading<T> value) loading,
    required TResult Function(ChangePasswordSuccess<T> value) success,
    required TResult Function(ChangePasswordError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ChangePasswordLoading<T> value)? loading,
    TResult? Function(ChangePasswordSuccess<T> value)? success,
    TResult? Function(ChangePasswordError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ChangePasswordLoading<T> value)? loading,
    TResult Function(ChangePasswordSuccess<T> value)? success,
    TResult Function(ChangePasswordError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordError<T> implements ChangePasswordState<T> {
  const factory ChangePasswordError({required final String error}) =
      _$ChangePasswordErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$ChangePasswordErrorImplCopyWith<T, _$ChangePasswordErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
