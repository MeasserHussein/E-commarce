// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPassword) successAction,
    required TResult Function(bool isPassword) successAction2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPassword)? successAction,
    TResult? Function(bool isPassword)? successAction2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPassword)? successAction,
    TResult Function(bool isPassword)? successAction2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) loginLoading,
    required TResult Function(SignupSuccess<T> value) loginSuccess,
    required TResult Function(SignupError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
    required TResult Function(SuccessAction2<T> value) successAction2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? loginLoading,
    TResult? Function(SignupSuccess<T> value)? loginSuccess,
    TResult? Function(SignupError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
    TResult? Function(SuccessAction2<T> value)? successAction2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? loginLoading,
    TResult Function(SignupSuccess<T> value)? loginSuccess,
    TResult Function(SignupError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    TResult Function(SuccessAction2<T> value)? successAction2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<T, $Res> {
  factory $SignupStateCopyWith(
          SignupState<T> value, $Res Function(SignupState<T>) then) =
      _$SignupStateCopyWithImpl<T, $Res, SignupState<T>>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<T, $Res, $Val extends SignupState<T>>
    implements $SignupStateCopyWith<T, $Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignupState<$T>.initial()';
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
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPassword) successAction,
    required TResult Function(bool isPassword) successAction2,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPassword)? successAction,
    TResult? Function(bool isPassword)? successAction2,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPassword)? successAction,
    TResult Function(bool isPassword)? successAction2,
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
    required TResult Function(SignupLoading<T> value) loginLoading,
    required TResult Function(SignupSuccess<T> value) loginSuccess,
    required TResult Function(SignupError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
    required TResult Function(SuccessAction2<T> value) successAction2,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? loginLoading,
    TResult? Function(SignupSuccess<T> value)? loginSuccess,
    TResult? Function(SignupError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
    TResult? Function(SuccessAction2<T> value)? successAction2,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? loginLoading,
    TResult Function(SignupSuccess<T> value)? loginSuccess,
    TResult Function(SignupError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    TResult Function(SuccessAction2<T> value)? successAction2,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SignupState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SignupLoadingImplCopyWith<T, $Res> {
  factory _$$SignupLoadingImplCopyWith(_$SignupLoadingImpl<T> value,
          $Res Function(_$SignupLoadingImpl<T>) then) =
      __$$SignupLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SignupLoadingImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$SignupLoadingImpl<T>>
    implements _$$SignupLoadingImplCopyWith<T, $Res> {
  __$$SignupLoadingImplCopyWithImpl(_$SignupLoadingImpl<T> _value,
      $Res Function(_$SignupLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupLoadingImpl<T> implements SignupLoading<T> {
  const _$SignupLoadingImpl();

  @override
  String toString() {
    return 'SignupState<$T>.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPassword) successAction,
    required TResult Function(bool isPassword) successAction2,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPassword)? successAction,
    TResult? Function(bool isPassword)? successAction2,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPassword)? successAction,
    TResult Function(bool isPassword)? successAction2,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) loginLoading,
    required TResult Function(SignupSuccess<T> value) loginSuccess,
    required TResult Function(SignupError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
    required TResult Function(SuccessAction2<T> value) successAction2,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? loginLoading,
    TResult? Function(SignupSuccess<T> value)? loginSuccess,
    TResult? Function(SignupError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
    TResult? Function(SuccessAction2<T> value)? successAction2,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? loginLoading,
    TResult Function(SignupSuccess<T> value)? loginSuccess,
    TResult Function(SignupError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    TResult Function(SuccessAction2<T> value)? successAction2,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class SignupLoading<T> implements SignupState<T> {
  const factory SignupLoading() = _$SignupLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SignupSuccessImplCopyWith<T, $Res> {
  factory _$$SignupSuccessImplCopyWith(_$SignupSuccessImpl<T> value,
          $Res Function(_$SignupSuccessImpl<T>) then) =
      __$$SignupSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SignupSuccessImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$SignupSuccessImpl<T>>
    implements _$$SignupSuccessImplCopyWith<T, $Res> {
  __$$SignupSuccessImplCopyWithImpl(_$SignupSuccessImpl<T> _value,
      $Res Function(_$SignupSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SignupSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SignupSuccessImpl<T> implements SignupSuccess<T> {
  const _$SignupSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SignupState<$T>.loginSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupSuccessImplCopyWith<T, _$SignupSuccessImpl<T>> get copyWith =>
      __$$SignupSuccessImplCopyWithImpl<T, _$SignupSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPassword) successAction,
    required TResult Function(bool isPassword) successAction2,
  }) {
    return loginSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPassword)? successAction,
    TResult? Function(bool isPassword)? successAction2,
  }) {
    return loginSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPassword)? successAction,
    TResult Function(bool isPassword)? successAction2,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) loginLoading,
    required TResult Function(SignupSuccess<T> value) loginSuccess,
    required TResult Function(SignupError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
    required TResult Function(SuccessAction2<T> value) successAction2,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? loginLoading,
    TResult? Function(SignupSuccess<T> value)? loginSuccess,
    TResult? Function(SignupError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
    TResult? Function(SuccessAction2<T> value)? successAction2,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? loginLoading,
    TResult Function(SignupSuccess<T> value)? loginSuccess,
    TResult Function(SignupError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    TResult Function(SuccessAction2<T> value)? successAction2,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class SignupSuccess<T> implements SignupState<T> {
  const factory SignupSuccess(final T data) = _$SignupSuccessImpl<T>;

  T get data;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupSuccessImplCopyWith<T, _$SignupSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupErrorImplCopyWith<T, $Res> {
  factory _$$SignupErrorImplCopyWith(_$SignupErrorImpl<T> value,
          $Res Function(_$SignupErrorImpl<T>) then) =
      __$$SignupErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SignupErrorImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$SignupErrorImpl<T>>
    implements _$$SignupErrorImplCopyWith<T, $Res> {
  __$$SignupErrorImplCopyWithImpl(
      _$SignupErrorImpl<T> _value, $Res Function(_$SignupErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SignupErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupErrorImpl<T> implements SignupError<T> {
  const _$SignupErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SignupState<$T>.loginError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupErrorImplCopyWith<T, _$SignupErrorImpl<T>> get copyWith =>
      __$$SignupErrorImplCopyWithImpl<T, _$SignupErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPassword) successAction,
    required TResult Function(bool isPassword) successAction2,
  }) {
    return loginError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPassword)? successAction,
    TResult? Function(bool isPassword)? successAction2,
  }) {
    return loginError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPassword)? successAction,
    TResult Function(bool isPassword)? successAction2,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) loginLoading,
    required TResult Function(SignupSuccess<T> value) loginSuccess,
    required TResult Function(SignupError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
    required TResult Function(SuccessAction2<T> value) successAction2,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? loginLoading,
    TResult? Function(SignupSuccess<T> value)? loginSuccess,
    TResult? Function(SignupError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
    TResult? Function(SuccessAction2<T> value)? successAction2,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? loginLoading,
    TResult Function(SignupSuccess<T> value)? loginSuccess,
    TResult Function(SignupError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    TResult Function(SuccessAction2<T> value)? successAction2,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class SignupError<T> implements SignupState<T> {
  const factory SignupError({required final String error}) =
      _$SignupErrorImpl<T>;

  String get error;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupErrorImplCopyWith<T, _$SignupErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessActionImplCopyWith<T, $Res> {
  factory _$$SuccessActionImplCopyWith(_$SuccessActionImpl<T> value,
          $Res Function(_$SuccessActionImpl<T>) then) =
      __$$SuccessActionImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isPassword});
}

/// @nodoc
class __$$SuccessActionImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$SuccessActionImpl<T>>
    implements _$$SuccessActionImplCopyWith<T, $Res> {
  __$$SuccessActionImplCopyWithImpl(_$SuccessActionImpl<T> _value,
      $Res Function(_$SuccessActionImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassword = null,
  }) {
    return _then(_$SuccessActionImpl<T>(
      null == isPassword
          ? _value.isPassword
          : isPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessActionImpl<T> implements SuccessAction<T> {
  const _$SuccessActionImpl(this.isPassword);

  @override
  final bool isPassword;

  @override
  String toString() {
    return 'SignupState<$T>.successAction(isPassword: $isPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessActionImpl<T> &&
            (identical(other.isPassword, isPassword) ||
                other.isPassword == isPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPassword);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessActionImplCopyWith<T, _$SuccessActionImpl<T>> get copyWith =>
      __$$SuccessActionImplCopyWithImpl<T, _$SuccessActionImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPassword) successAction,
    required TResult Function(bool isPassword) successAction2,
  }) {
    return successAction(isPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPassword)? successAction,
    TResult? Function(bool isPassword)? successAction2,
  }) {
    return successAction?.call(isPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPassword)? successAction,
    TResult Function(bool isPassword)? successAction2,
    required TResult orElse(),
  }) {
    if (successAction != null) {
      return successAction(isPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) loginLoading,
    required TResult Function(SignupSuccess<T> value) loginSuccess,
    required TResult Function(SignupError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
    required TResult Function(SuccessAction2<T> value) successAction2,
  }) {
    return successAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? loginLoading,
    TResult? Function(SignupSuccess<T> value)? loginSuccess,
    TResult? Function(SignupError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
    TResult? Function(SuccessAction2<T> value)? successAction2,
  }) {
    return successAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? loginLoading,
    TResult Function(SignupSuccess<T> value)? loginSuccess,
    TResult Function(SignupError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    TResult Function(SuccessAction2<T> value)? successAction2,
    required TResult orElse(),
  }) {
    if (successAction != null) {
      return successAction(this);
    }
    return orElse();
  }
}

abstract class SuccessAction<T> implements SignupState<T> {
  const factory SuccessAction(final bool isPassword) = _$SuccessActionImpl<T>;

  bool get isPassword;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessActionImplCopyWith<T, _$SuccessActionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessAction2ImplCopyWith<T, $Res> {
  factory _$$SuccessAction2ImplCopyWith(_$SuccessAction2Impl<T> value,
          $Res Function(_$SuccessAction2Impl<T>) then) =
      __$$SuccessAction2ImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool isPassword});
}

/// @nodoc
class __$$SuccessAction2ImplCopyWithImpl<T, $Res>
    extends _$SignupStateCopyWithImpl<T, $Res, _$SuccessAction2Impl<T>>
    implements _$$SuccessAction2ImplCopyWith<T, $Res> {
  __$$SuccessAction2ImplCopyWithImpl(_$SuccessAction2Impl<T> _value,
      $Res Function(_$SuccessAction2Impl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPassword = null,
  }) {
    return _then(_$SuccessAction2Impl<T>(
      null == isPassword
          ? _value.isPassword
          : isPassword // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessAction2Impl<T> implements SuccessAction2<T> {
  const _$SuccessAction2Impl(this.isPassword);

  @override
  final bool isPassword;

  @override
  String toString() {
    return 'SignupState<$T>.successAction2(isPassword: $isPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAction2Impl<T> &&
            (identical(other.isPassword, isPassword) ||
                other.isPassword == isPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPassword);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAction2ImplCopyWith<T, _$SuccessAction2Impl<T>> get copyWith =>
      __$$SuccessAction2ImplCopyWithImpl<T, _$SuccessAction2Impl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool isPassword) successAction,
    required TResult Function(bool isPassword) successAction2,
  }) {
    return successAction2(isPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool isPassword)? successAction,
    TResult? Function(bool isPassword)? successAction2,
  }) {
    return successAction2?.call(isPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool isPassword)? successAction,
    TResult Function(bool isPassword)? successAction2,
    required TResult orElse(),
  }) {
    if (successAction2 != null) {
      return successAction2(isPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SignupLoading<T> value) loginLoading,
    required TResult Function(SignupSuccess<T> value) loginSuccess,
    required TResult Function(SignupError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
    required TResult Function(SuccessAction2<T> value) successAction2,
  }) {
    return successAction2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SignupLoading<T> value)? loginLoading,
    TResult? Function(SignupSuccess<T> value)? loginSuccess,
    TResult? Function(SignupError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
    TResult? Function(SuccessAction2<T> value)? successAction2,
  }) {
    return successAction2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SignupLoading<T> value)? loginLoading,
    TResult Function(SignupSuccess<T> value)? loginSuccess,
    TResult Function(SignupError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    TResult Function(SuccessAction2<T> value)? successAction2,
    required TResult orElse(),
  }) {
    if (successAction2 != null) {
      return successAction2(this);
    }
    return orElse();
  }
}

abstract class SuccessAction2<T> implements SignupState<T> {
  const factory SuccessAction2(final bool isPassword) = _$SuccessAction2Impl<T>;

  bool get isPassword;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessAction2ImplCopyWith<T, _$SuccessAction2Impl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
