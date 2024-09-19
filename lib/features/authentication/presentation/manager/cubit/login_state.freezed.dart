// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(VerifyTokenResponse data) verifyTokenSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool s) successAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool s)? successAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool s)? successAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(VerifyTokenSuccess<T> value) verifyTokenSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<T, $Res> {
  factory $LoginStateCopyWith(
          LoginState<T> value, $Res Function(LoginState<T>) then) =
      _$LoginStateCopyWithImpl<T, $Res, LoginState<T>>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<T, $Res, $Val extends LoginState<T>>
    implements $LoginStateCopyWith<T, $Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
    extends _$LoginStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
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
    return 'LoginState<$T>.initial()';
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
    required TResult Function(VerifyTokenResponse data) verifyTokenSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool s) successAction,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool s)? successAction,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool s)? successAction,
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
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(VerifyTokenSuccess<T> value) verifyTokenSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements LoginState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<T, $Res> {
  factory _$$LoginLoadingImplCopyWith(_$LoginLoadingImpl<T> value,
          $Res Function(_$LoginLoadingImpl<T>) then) =
      __$$LoginLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginLoadingImpl<T>>
    implements _$$LoginLoadingImplCopyWith<T, $Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl<T> _value, $Res Function(_$LoginLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingImpl<T> implements LoginLoading<T> {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState<$T>.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(VerifyTokenResponse data) verifyTokenSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool s) successAction,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool s)? successAction,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool s)? successAction,
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
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(VerifyTokenSuccess<T> value) verifyTokenSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading<T> implements LoginState<T> {
  const factory LoginLoading() = _$LoginLoadingImpl<T>;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<T, $Res> {
  factory _$$LoginSuccessImplCopyWith(_$LoginSuccessImpl<T> value,
          $Res Function(_$LoginSuccessImpl<T>) then) =
      __$$LoginSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginSuccessImpl<T>>
    implements _$$LoginSuccessImplCopyWith<T, $Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl<T> _value, $Res Function(_$LoginSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoginSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl<T> implements LoginSuccess<T> {
  const _$LoginSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'LoginState<$T>.loginSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<T, _$LoginSuccessImpl<T>> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<T, _$LoginSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(VerifyTokenResponse data) verifyTokenSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool s) successAction,
  }) {
    return loginSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool s)? successAction,
  }) {
    return loginSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool s)? successAction,
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
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(VerifyTokenSuccess<T> value) verifyTokenSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess<T> implements LoginState<T> {
  const factory LoginSuccess(final T data) = _$LoginSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<T, _$LoginSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyTokenSuccessImplCopyWith<T, $Res> {
  factory _$$VerifyTokenSuccessImplCopyWith(_$VerifyTokenSuccessImpl<T> value,
          $Res Function(_$VerifyTokenSuccessImpl<T>) then) =
      __$$VerifyTokenSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({VerifyTokenResponse data});
}

/// @nodoc
class __$$VerifyTokenSuccessImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$VerifyTokenSuccessImpl<T>>
    implements _$$VerifyTokenSuccessImplCopyWith<T, $Res> {
  __$$VerifyTokenSuccessImplCopyWithImpl(_$VerifyTokenSuccessImpl<T> _value,
      $Res Function(_$VerifyTokenSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$VerifyTokenSuccessImpl<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VerifyTokenResponse,
    ));
  }
}

/// @nodoc

class _$VerifyTokenSuccessImpl<T> implements VerifyTokenSuccess<T> {
  const _$VerifyTokenSuccessImpl(this.data);

  @override
  final VerifyTokenResponse data;

  @override
  String toString() {
    return 'LoginState<$T>.verifyTokenSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyTokenSuccessImpl<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyTokenSuccessImplCopyWith<T, _$VerifyTokenSuccessImpl<T>>
      get copyWith => __$$VerifyTokenSuccessImplCopyWithImpl<T,
          _$VerifyTokenSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(VerifyTokenResponse data) verifyTokenSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool s) successAction,
  }) {
    return verifyTokenSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool s)? successAction,
  }) {
    return verifyTokenSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool s)? successAction,
    required TResult orElse(),
  }) {
    if (verifyTokenSuccess != null) {
      return verifyTokenSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(VerifyTokenSuccess<T> value) verifyTokenSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
  }) {
    return verifyTokenSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
  }) {
    return verifyTokenSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    required TResult orElse(),
  }) {
    if (verifyTokenSuccess != null) {
      return verifyTokenSuccess(this);
    }
    return orElse();
  }
}

abstract class VerifyTokenSuccess<T> implements LoginState<T> {
  const factory VerifyTokenSuccess(final VerifyTokenResponse data) =
      _$VerifyTokenSuccessImpl<T>;

  VerifyTokenResponse get data;
  @JsonKey(ignore: true)
  _$$VerifyTokenSuccessImplCopyWith<T, _$VerifyTokenSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<T, $Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl<T> value, $Res Function(_$LoginErrorImpl<T>) then) =
      __$$LoginErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$LoginErrorImpl<T>>
    implements _$$LoginErrorImplCopyWith<T, $Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl<T> _value, $Res Function(_$LoginErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl<T> implements LoginError<T> {
  const _$LoginErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState<$T>.loginError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<T, _$LoginErrorImpl<T>> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<T, _$LoginErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(T data) loginSuccess,
    required TResult Function(VerifyTokenResponse data) verifyTokenSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool s) successAction,
  }) {
    return loginError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool s)? successAction,
  }) {
    return loginError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool s)? successAction,
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
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(VerifyTokenSuccess<T> value) verifyTokenSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginError<T> implements LoginState<T> {
  const factory LoginError({required final String error}) = _$LoginErrorImpl<T>;

  String get error;
  @JsonKey(ignore: true)
  _$$LoginErrorImplCopyWith<T, _$LoginErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessActionImplCopyWith<T, $Res> {
  factory _$$SuccessActionImplCopyWith(_$SuccessActionImpl<T> value,
          $Res Function(_$SuccessActionImpl<T>) then) =
      __$$SuccessActionImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({bool s});
}

/// @nodoc
class __$$SuccessActionImplCopyWithImpl<T, $Res>
    extends _$LoginStateCopyWithImpl<T, $Res, _$SuccessActionImpl<T>>
    implements _$$SuccessActionImplCopyWith<T, $Res> {
  __$$SuccessActionImplCopyWithImpl(_$SuccessActionImpl<T> _value,
      $Res Function(_$SuccessActionImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s = null,
  }) {
    return _then(_$SuccessActionImpl<T>(
      s: null == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessActionImpl<T> implements SuccessAction<T> {
  const _$SuccessActionImpl({required this.s});

  @override
  final bool s;

  @override
  String toString() {
    return 'LoginState<$T>.successAction(s: $s)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessActionImpl<T> &&
            (identical(other.s, s) || other.s == s));
  }

  @override
  int get hashCode => Object.hash(runtimeType, s);

  @JsonKey(ignore: true)
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
    required TResult Function(VerifyTokenResponse data) verifyTokenSuccess,
    required TResult Function(String error) loginError,
    required TResult Function(bool s) successAction,
  }) {
    return successAction(s);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(T data)? loginSuccess,
    TResult? Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult? Function(String error)? loginError,
    TResult? Function(bool s)? successAction,
  }) {
    return successAction?.call(s);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(T data)? loginSuccess,
    TResult Function(VerifyTokenResponse data)? verifyTokenSuccess,
    TResult Function(String error)? loginError,
    TResult Function(bool s)? successAction,
    required TResult orElse(),
  }) {
    if (successAction != null) {
      return successAction(s);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(LoginLoading<T> value) loginLoading,
    required TResult Function(LoginSuccess<T> value) loginSuccess,
    required TResult Function(VerifyTokenSuccess<T> value) verifyTokenSuccess,
    required TResult Function(LoginError<T> value) loginError,
    required TResult Function(SuccessAction<T> value) successAction,
  }) {
    return successAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(LoginLoading<T> value)? loginLoading,
    TResult? Function(LoginSuccess<T> value)? loginSuccess,
    TResult? Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult? Function(LoginError<T> value)? loginError,
    TResult? Function(SuccessAction<T> value)? successAction,
  }) {
    return successAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(LoginLoading<T> value)? loginLoading,
    TResult Function(LoginSuccess<T> value)? loginSuccess,
    TResult Function(VerifyTokenSuccess<T> value)? verifyTokenSuccess,
    TResult Function(LoginError<T> value)? loginError,
    TResult Function(SuccessAction<T> value)? successAction,
    required TResult orElse(),
  }) {
    if (successAction != null) {
      return successAction(this);
    }
    return orElse();
  }
}

abstract class SuccessAction<T> implements LoginState<T> {
  const factory SuccessAction({required final bool s}) = _$SuccessActionImpl<T>;

  bool get s;
  @JsonKey(ignore: true)
  _$$SuccessActionImplCopyWith<T, _$SuccessActionImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
