// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(ProductResponse productResponse) favoriteSuccess,
    required TResult Function(String error) favoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse addFav)
        addFavoriteSuccess,
    required TResult Function(String error) addFavoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse removeFav)
        removeFavoriteSuccess,
    required TResult Function(String error) removeFavoriteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(ProductResponse productResponse)? favoriteSuccess,
    TResult? Function(String error)? favoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult? Function(String error)? addFavoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult? Function(String error)? removeFavoriteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(ProductResponse productResponse)? favoriteSuccess,
    TResult Function(String error)? favoriteError,
    TResult Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult Function(String error)? addFavoriteError,
    TResult Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult Function(String error)? removeFavoriteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Initial<T> value) initial,
    required TResult Function(FavoriteLoading<T> value) favoriteLoading,
    required TResult Function(FavoriteSuccess<T> value) favoriteSuccess,
    required TResult Function(FavoriteError<T> value) favoriteError,
    required TResult Function(AddFavoriteSuccess<T> value) addFavoriteSuccess,
    required TResult Function(AddFavoriteError<T> value) addFavoriteError,
    required TResult Function(RemoveFavoriteSuccess<T> value)
        removeFavoriteSuccess,
    required TResult Function(RemoveFavoriteError<T> value) removeFavoriteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$Initial<T> value)? initial,
    TResult? Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult? Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult? Function(FavoriteError<T> value)? favoriteError,
    TResult? Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult? Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult? Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult? Function(RemoveFavoriteError<T> value)? removeFavoriteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Initial<T> value)? initial,
    TResult Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult Function(FavoriteError<T> value)? favoriteError,
    TResult Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult Function(RemoveFavoriteError<T> value)? removeFavoriteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<T, $Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState<T> value, $Res Function(FavoriteState<T>) then) =
      _$FavoriteStateCopyWithImpl<T, $Res, FavoriteState<T>>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<T, $Res, $Val extends FavoriteState<T>>
    implements $FavoriteStateCopyWith<T, $Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$$InitialImplCopyWith<T, $Res> {
  factory _$$$InitialImplCopyWith(
          _$$InitialImpl<T> value, $Res Function(_$$InitialImpl<T>) then) =
      __$$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$$InitialImplCopyWithImpl<T, $Res>
    extends _$FavoriteStateCopyWithImpl<T, $Res, _$$InitialImpl<T>>
    implements _$$$InitialImplCopyWith<T, $Res> {
  __$$$InitialImplCopyWithImpl(
      _$$InitialImpl<T> _value, $Res Function(_$$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$$InitialImpl<T> implements _$Initial<T> {
  const _$$InitialImpl();

  @override
  String toString() {
    return 'FavoriteState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(ProductResponse productResponse) favoriteSuccess,
    required TResult Function(String error) favoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse addFav)
        addFavoriteSuccess,
    required TResult Function(String error) addFavoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse removeFav)
        removeFavoriteSuccess,
    required TResult Function(String error) removeFavoriteError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(ProductResponse productResponse)? favoriteSuccess,
    TResult? Function(String error)? favoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult? Function(String error)? addFavoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult? Function(String error)? removeFavoriteError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(ProductResponse productResponse)? favoriteSuccess,
    TResult Function(String error)? favoriteError,
    TResult Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult Function(String error)? addFavoriteError,
    TResult Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult Function(String error)? removeFavoriteError,
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
    required TResult Function(_$Initial<T> value) initial,
    required TResult Function(FavoriteLoading<T> value) favoriteLoading,
    required TResult Function(FavoriteSuccess<T> value) favoriteSuccess,
    required TResult Function(FavoriteError<T> value) favoriteError,
    required TResult Function(AddFavoriteSuccess<T> value) addFavoriteSuccess,
    required TResult Function(AddFavoriteError<T> value) addFavoriteError,
    required TResult Function(RemoveFavoriteSuccess<T> value)
        removeFavoriteSuccess,
    required TResult Function(RemoveFavoriteError<T> value) removeFavoriteError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$Initial<T> value)? initial,
    TResult? Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult? Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult? Function(FavoriteError<T> value)? favoriteError,
    TResult? Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult? Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult? Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult? Function(RemoveFavoriteError<T> value)? removeFavoriteError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Initial<T> value)? initial,
    TResult Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult Function(FavoriteError<T> value)? favoriteError,
    TResult Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult Function(RemoveFavoriteError<T> value)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$Initial<T> implements FavoriteState<T> {
  const factory _$Initial() = _$$InitialImpl<T>;
}

/// @nodoc
abstract class _$$FavoriteLoadingImplCopyWith<T, $Res> {
  factory _$$FavoriteLoadingImplCopyWith(_$FavoriteLoadingImpl<T> value,
          $Res Function(_$FavoriteLoadingImpl<T>) then) =
      __$$FavoriteLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FavoriteLoadingImplCopyWithImpl<T, $Res>
    extends _$FavoriteStateCopyWithImpl<T, $Res, _$FavoriteLoadingImpl<T>>
    implements _$$FavoriteLoadingImplCopyWith<T, $Res> {
  __$$FavoriteLoadingImplCopyWithImpl(_$FavoriteLoadingImpl<T> _value,
      $Res Function(_$FavoriteLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FavoriteLoadingImpl<T> implements FavoriteLoading<T> {
  const _$FavoriteLoadingImpl();

  @override
  String toString() {
    return 'FavoriteState<$T>.favoriteLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavoriteLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(ProductResponse productResponse) favoriteSuccess,
    required TResult Function(String error) favoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse addFav)
        addFavoriteSuccess,
    required TResult Function(String error) addFavoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse removeFav)
        removeFavoriteSuccess,
    required TResult Function(String error) removeFavoriteError,
  }) {
    return favoriteLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(ProductResponse productResponse)? favoriteSuccess,
    TResult? Function(String error)? favoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult? Function(String error)? addFavoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult? Function(String error)? removeFavoriteError,
  }) {
    return favoriteLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(ProductResponse productResponse)? favoriteSuccess,
    TResult Function(String error)? favoriteError,
    TResult Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult Function(String error)? addFavoriteError,
    TResult Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult Function(String error)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (favoriteLoading != null) {
      return favoriteLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Initial<T> value) initial,
    required TResult Function(FavoriteLoading<T> value) favoriteLoading,
    required TResult Function(FavoriteSuccess<T> value) favoriteSuccess,
    required TResult Function(FavoriteError<T> value) favoriteError,
    required TResult Function(AddFavoriteSuccess<T> value) addFavoriteSuccess,
    required TResult Function(AddFavoriteError<T> value) addFavoriteError,
    required TResult Function(RemoveFavoriteSuccess<T> value)
        removeFavoriteSuccess,
    required TResult Function(RemoveFavoriteError<T> value) removeFavoriteError,
  }) {
    return favoriteLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$Initial<T> value)? initial,
    TResult? Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult? Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult? Function(FavoriteError<T> value)? favoriteError,
    TResult? Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult? Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult? Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult? Function(RemoveFavoriteError<T> value)? removeFavoriteError,
  }) {
    return favoriteLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Initial<T> value)? initial,
    TResult Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult Function(FavoriteError<T> value)? favoriteError,
    TResult Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult Function(RemoveFavoriteError<T> value)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (favoriteLoading != null) {
      return favoriteLoading(this);
    }
    return orElse();
  }
}

abstract class FavoriteLoading<T> implements FavoriteState<T> {
  const factory FavoriteLoading() = _$FavoriteLoadingImpl<T>;
}

/// @nodoc
abstract class _$$FavoriteSuccessImplCopyWith<T, $Res> {
  factory _$$FavoriteSuccessImplCopyWith(_$FavoriteSuccessImpl<T> value,
          $Res Function(_$FavoriteSuccessImpl<T>) then) =
      __$$FavoriteSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ProductResponse productResponse});
}

/// @nodoc
class __$$FavoriteSuccessImplCopyWithImpl<T, $Res>
    extends _$FavoriteStateCopyWithImpl<T, $Res, _$FavoriteSuccessImpl<T>>
    implements _$$FavoriteSuccessImplCopyWith<T, $Res> {
  __$$FavoriteSuccessImplCopyWithImpl(_$FavoriteSuccessImpl<T> _value,
      $Res Function(_$FavoriteSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productResponse = null,
  }) {
    return _then(_$FavoriteSuccessImpl<T>(
      productResponse: null == productResponse
          ? _value.productResponse
          : productResponse // ignore: cast_nullable_to_non_nullable
              as ProductResponse,
    ));
  }
}

/// @nodoc

class _$FavoriteSuccessImpl<T> implements FavoriteSuccess<T> {
  const _$FavoriteSuccessImpl({required this.productResponse});

  @override
  final ProductResponse productResponse;

  @override
  String toString() {
    return 'FavoriteState<$T>.favoriteSuccess(productResponse: $productResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteSuccessImpl<T> &&
            (identical(other.productResponse, productResponse) ||
                other.productResponse == productResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productResponse);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteSuccessImplCopyWith<T, _$FavoriteSuccessImpl<T>> get copyWith =>
      __$$FavoriteSuccessImplCopyWithImpl<T, _$FavoriteSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(ProductResponse productResponse) favoriteSuccess,
    required TResult Function(String error) favoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse addFav)
        addFavoriteSuccess,
    required TResult Function(String error) addFavoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse removeFav)
        removeFavoriteSuccess,
    required TResult Function(String error) removeFavoriteError,
  }) {
    return favoriteSuccess(productResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(ProductResponse productResponse)? favoriteSuccess,
    TResult? Function(String error)? favoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult? Function(String error)? addFavoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult? Function(String error)? removeFavoriteError,
  }) {
    return favoriteSuccess?.call(productResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(ProductResponse productResponse)? favoriteSuccess,
    TResult Function(String error)? favoriteError,
    TResult Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult Function(String error)? addFavoriteError,
    TResult Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult Function(String error)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (favoriteSuccess != null) {
      return favoriteSuccess(productResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Initial<T> value) initial,
    required TResult Function(FavoriteLoading<T> value) favoriteLoading,
    required TResult Function(FavoriteSuccess<T> value) favoriteSuccess,
    required TResult Function(FavoriteError<T> value) favoriteError,
    required TResult Function(AddFavoriteSuccess<T> value) addFavoriteSuccess,
    required TResult Function(AddFavoriteError<T> value) addFavoriteError,
    required TResult Function(RemoveFavoriteSuccess<T> value)
        removeFavoriteSuccess,
    required TResult Function(RemoveFavoriteError<T> value) removeFavoriteError,
  }) {
    return favoriteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$Initial<T> value)? initial,
    TResult? Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult? Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult? Function(FavoriteError<T> value)? favoriteError,
    TResult? Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult? Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult? Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult? Function(RemoveFavoriteError<T> value)? removeFavoriteError,
  }) {
    return favoriteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Initial<T> value)? initial,
    TResult Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult Function(FavoriteError<T> value)? favoriteError,
    TResult Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult Function(RemoveFavoriteError<T> value)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (favoriteSuccess != null) {
      return favoriteSuccess(this);
    }
    return orElse();
  }
}

abstract class FavoriteSuccess<T> implements FavoriteState<T> {
  const factory FavoriteSuccess(
          {required final ProductResponse productResponse}) =
      _$FavoriteSuccessImpl<T>;

  ProductResponse get productResponse;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteSuccessImplCopyWith<T, _$FavoriteSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteErrorImplCopyWith<T, $Res> {
  factory _$$FavoriteErrorImplCopyWith(_$FavoriteErrorImpl<T> value,
          $Res Function(_$FavoriteErrorImpl<T>) then) =
      __$$FavoriteErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FavoriteErrorImplCopyWithImpl<T, $Res>
    extends _$FavoriteStateCopyWithImpl<T, $Res, _$FavoriteErrorImpl<T>>
    implements _$$FavoriteErrorImplCopyWith<T, $Res> {
  __$$FavoriteErrorImplCopyWithImpl(_$FavoriteErrorImpl<T> _value,
      $Res Function(_$FavoriteErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FavoriteErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteErrorImpl<T> implements FavoriteError<T> {
  const _$FavoriteErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FavoriteState<$T>.favoriteError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteErrorImplCopyWith<T, _$FavoriteErrorImpl<T>> get copyWith =>
      __$$FavoriteErrorImplCopyWithImpl<T, _$FavoriteErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(ProductResponse productResponse) favoriteSuccess,
    required TResult Function(String error) favoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse addFav)
        addFavoriteSuccess,
    required TResult Function(String error) addFavoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse removeFav)
        removeFavoriteSuccess,
    required TResult Function(String error) removeFavoriteError,
  }) {
    return favoriteError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(ProductResponse productResponse)? favoriteSuccess,
    TResult? Function(String error)? favoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult? Function(String error)? addFavoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult? Function(String error)? removeFavoriteError,
  }) {
    return favoriteError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(ProductResponse productResponse)? favoriteSuccess,
    TResult Function(String error)? favoriteError,
    TResult Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult Function(String error)? addFavoriteError,
    TResult Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult Function(String error)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (favoriteError != null) {
      return favoriteError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Initial<T> value) initial,
    required TResult Function(FavoriteLoading<T> value) favoriteLoading,
    required TResult Function(FavoriteSuccess<T> value) favoriteSuccess,
    required TResult Function(FavoriteError<T> value) favoriteError,
    required TResult Function(AddFavoriteSuccess<T> value) addFavoriteSuccess,
    required TResult Function(AddFavoriteError<T> value) addFavoriteError,
    required TResult Function(RemoveFavoriteSuccess<T> value)
        removeFavoriteSuccess,
    required TResult Function(RemoveFavoriteError<T> value) removeFavoriteError,
  }) {
    return favoriteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$Initial<T> value)? initial,
    TResult? Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult? Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult? Function(FavoriteError<T> value)? favoriteError,
    TResult? Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult? Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult? Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult? Function(RemoveFavoriteError<T> value)? removeFavoriteError,
  }) {
    return favoriteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Initial<T> value)? initial,
    TResult Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult Function(FavoriteError<T> value)? favoriteError,
    TResult Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult Function(RemoveFavoriteError<T> value)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (favoriteError != null) {
      return favoriteError(this);
    }
    return orElse();
  }
}

abstract class FavoriteError<T> implements FavoriteState<T> {
  const factory FavoriteError({required final String error}) =
      _$FavoriteErrorImpl<T>;

  String get error;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteErrorImplCopyWith<T, _$FavoriteErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavoriteSuccessImplCopyWith<T, $Res> {
  factory _$$AddFavoriteSuccessImplCopyWith(_$AddFavoriteSuccessImpl<T> value,
          $Res Function(_$AddFavoriteSuccessImpl<T>) then) =
      __$$AddFavoriteSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({AddAndRemoveFavouriteResponse addFav});
}

/// @nodoc
class __$$AddFavoriteSuccessImplCopyWithImpl<T, $Res>
    extends _$FavoriteStateCopyWithImpl<T, $Res, _$AddFavoriteSuccessImpl<T>>
    implements _$$AddFavoriteSuccessImplCopyWith<T, $Res> {
  __$$AddFavoriteSuccessImplCopyWithImpl(_$AddFavoriteSuccessImpl<T> _value,
      $Res Function(_$AddFavoriteSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addFav = null,
  }) {
    return _then(_$AddFavoriteSuccessImpl<T>(
      null == addFav
          ? _value.addFav
          : addFav // ignore: cast_nullable_to_non_nullable
              as AddAndRemoveFavouriteResponse,
    ));
  }
}

/// @nodoc

class _$AddFavoriteSuccessImpl<T> implements AddFavoriteSuccess<T> {
  const _$AddFavoriteSuccessImpl(this.addFav);

  @override
  final AddAndRemoveFavouriteResponse addFav;

  @override
  String toString() {
    return 'FavoriteState<$T>.addFavoriteSuccess(addFav: $addFav)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteSuccessImpl<T> &&
            (identical(other.addFav, addFav) || other.addFav == addFav));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addFav);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteSuccessImplCopyWith<T, _$AddFavoriteSuccessImpl<T>>
      get copyWith => __$$AddFavoriteSuccessImplCopyWithImpl<T,
          _$AddFavoriteSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(ProductResponse productResponse) favoriteSuccess,
    required TResult Function(String error) favoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse addFav)
        addFavoriteSuccess,
    required TResult Function(String error) addFavoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse removeFav)
        removeFavoriteSuccess,
    required TResult Function(String error) removeFavoriteError,
  }) {
    return addFavoriteSuccess(addFav);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(ProductResponse productResponse)? favoriteSuccess,
    TResult? Function(String error)? favoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult? Function(String error)? addFavoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult? Function(String error)? removeFavoriteError,
  }) {
    return addFavoriteSuccess?.call(addFav);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(ProductResponse productResponse)? favoriteSuccess,
    TResult Function(String error)? favoriteError,
    TResult Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult Function(String error)? addFavoriteError,
    TResult Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult Function(String error)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (addFavoriteSuccess != null) {
      return addFavoriteSuccess(addFav);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Initial<T> value) initial,
    required TResult Function(FavoriteLoading<T> value) favoriteLoading,
    required TResult Function(FavoriteSuccess<T> value) favoriteSuccess,
    required TResult Function(FavoriteError<T> value) favoriteError,
    required TResult Function(AddFavoriteSuccess<T> value) addFavoriteSuccess,
    required TResult Function(AddFavoriteError<T> value) addFavoriteError,
    required TResult Function(RemoveFavoriteSuccess<T> value)
        removeFavoriteSuccess,
    required TResult Function(RemoveFavoriteError<T> value) removeFavoriteError,
  }) {
    return addFavoriteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$Initial<T> value)? initial,
    TResult? Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult? Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult? Function(FavoriteError<T> value)? favoriteError,
    TResult? Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult? Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult? Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult? Function(RemoveFavoriteError<T> value)? removeFavoriteError,
  }) {
    return addFavoriteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Initial<T> value)? initial,
    TResult Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult Function(FavoriteError<T> value)? favoriteError,
    TResult Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult Function(RemoveFavoriteError<T> value)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (addFavoriteSuccess != null) {
      return addFavoriteSuccess(this);
    }
    return orElse();
  }
}

abstract class AddFavoriteSuccess<T> implements FavoriteState<T> {
  const factory AddFavoriteSuccess(final AddAndRemoveFavouriteResponse addFav) =
      _$AddFavoriteSuccessImpl<T>;

  AddAndRemoveFavouriteResponse get addFav;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFavoriteSuccessImplCopyWith<T, _$AddFavoriteSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFavoriteErrorImplCopyWith<T, $Res> {
  factory _$$AddFavoriteErrorImplCopyWith(_$AddFavoriteErrorImpl<T> value,
          $Res Function(_$AddFavoriteErrorImpl<T>) then) =
      __$$AddFavoriteErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddFavoriteErrorImplCopyWithImpl<T, $Res>
    extends _$FavoriteStateCopyWithImpl<T, $Res, _$AddFavoriteErrorImpl<T>>
    implements _$$AddFavoriteErrorImplCopyWith<T, $Res> {
  __$$AddFavoriteErrorImplCopyWithImpl(_$AddFavoriteErrorImpl<T> _value,
      $Res Function(_$AddFavoriteErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddFavoriteErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFavoriteErrorImpl<T> implements AddFavoriteError<T> {
  const _$AddFavoriteErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FavoriteState<$T>.addFavoriteError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteErrorImplCopyWith<T, _$AddFavoriteErrorImpl<T>> get copyWith =>
      __$$AddFavoriteErrorImplCopyWithImpl<T, _$AddFavoriteErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(ProductResponse productResponse) favoriteSuccess,
    required TResult Function(String error) favoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse addFav)
        addFavoriteSuccess,
    required TResult Function(String error) addFavoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse removeFav)
        removeFavoriteSuccess,
    required TResult Function(String error) removeFavoriteError,
  }) {
    return addFavoriteError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(ProductResponse productResponse)? favoriteSuccess,
    TResult? Function(String error)? favoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult? Function(String error)? addFavoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult? Function(String error)? removeFavoriteError,
  }) {
    return addFavoriteError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(ProductResponse productResponse)? favoriteSuccess,
    TResult Function(String error)? favoriteError,
    TResult Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult Function(String error)? addFavoriteError,
    TResult Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult Function(String error)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (addFavoriteError != null) {
      return addFavoriteError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Initial<T> value) initial,
    required TResult Function(FavoriteLoading<T> value) favoriteLoading,
    required TResult Function(FavoriteSuccess<T> value) favoriteSuccess,
    required TResult Function(FavoriteError<T> value) favoriteError,
    required TResult Function(AddFavoriteSuccess<T> value) addFavoriteSuccess,
    required TResult Function(AddFavoriteError<T> value) addFavoriteError,
    required TResult Function(RemoveFavoriteSuccess<T> value)
        removeFavoriteSuccess,
    required TResult Function(RemoveFavoriteError<T> value) removeFavoriteError,
  }) {
    return addFavoriteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$Initial<T> value)? initial,
    TResult? Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult? Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult? Function(FavoriteError<T> value)? favoriteError,
    TResult? Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult? Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult? Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult? Function(RemoveFavoriteError<T> value)? removeFavoriteError,
  }) {
    return addFavoriteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Initial<T> value)? initial,
    TResult Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult Function(FavoriteError<T> value)? favoriteError,
    TResult Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult Function(RemoveFavoriteError<T> value)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (addFavoriteError != null) {
      return addFavoriteError(this);
    }
    return orElse();
  }
}

abstract class AddFavoriteError<T> implements FavoriteState<T> {
  const factory AddFavoriteError({required final String error}) =
      _$AddFavoriteErrorImpl<T>;

  String get error;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddFavoriteErrorImplCopyWith<T, _$AddFavoriteErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteSuccessImplCopyWith<T, $Res> {
  factory _$$RemoveFavoriteSuccessImplCopyWith(
          _$RemoveFavoriteSuccessImpl<T> value,
          $Res Function(_$RemoveFavoriteSuccessImpl<T>) then) =
      __$$RemoveFavoriteSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({AddAndRemoveFavouriteResponse removeFav});
}

/// @nodoc
class __$$RemoveFavoriteSuccessImplCopyWithImpl<T, $Res>
    extends _$FavoriteStateCopyWithImpl<T, $Res, _$RemoveFavoriteSuccessImpl<T>>
    implements _$$RemoveFavoriteSuccessImplCopyWith<T, $Res> {
  __$$RemoveFavoriteSuccessImplCopyWithImpl(
      _$RemoveFavoriteSuccessImpl<T> _value,
      $Res Function(_$RemoveFavoriteSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removeFav = null,
  }) {
    return _then(_$RemoveFavoriteSuccessImpl<T>(
      null == removeFav
          ? _value.removeFav
          : removeFav // ignore: cast_nullable_to_non_nullable
              as AddAndRemoveFavouriteResponse,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteSuccessImpl<T> implements RemoveFavoriteSuccess<T> {
  const _$RemoveFavoriteSuccessImpl(this.removeFav);

  @override
  final AddAndRemoveFavouriteResponse removeFav;

  @override
  String toString() {
    return 'FavoriteState<$T>.removeFavoriteSuccess(removeFav: $removeFav)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteSuccessImpl<T> &&
            (identical(other.removeFav, removeFav) ||
                other.removeFav == removeFav));
  }

  @override
  int get hashCode => Object.hash(runtimeType, removeFav);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteSuccessImplCopyWith<T, _$RemoveFavoriteSuccessImpl<T>>
      get copyWith => __$$RemoveFavoriteSuccessImplCopyWithImpl<T,
          _$RemoveFavoriteSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(ProductResponse productResponse) favoriteSuccess,
    required TResult Function(String error) favoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse addFav)
        addFavoriteSuccess,
    required TResult Function(String error) addFavoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse removeFav)
        removeFavoriteSuccess,
    required TResult Function(String error) removeFavoriteError,
  }) {
    return removeFavoriteSuccess(removeFav);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(ProductResponse productResponse)? favoriteSuccess,
    TResult? Function(String error)? favoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult? Function(String error)? addFavoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult? Function(String error)? removeFavoriteError,
  }) {
    return removeFavoriteSuccess?.call(removeFav);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(ProductResponse productResponse)? favoriteSuccess,
    TResult Function(String error)? favoriteError,
    TResult Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult Function(String error)? addFavoriteError,
    TResult Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult Function(String error)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (removeFavoriteSuccess != null) {
      return removeFavoriteSuccess(removeFav);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Initial<T> value) initial,
    required TResult Function(FavoriteLoading<T> value) favoriteLoading,
    required TResult Function(FavoriteSuccess<T> value) favoriteSuccess,
    required TResult Function(FavoriteError<T> value) favoriteError,
    required TResult Function(AddFavoriteSuccess<T> value) addFavoriteSuccess,
    required TResult Function(AddFavoriteError<T> value) addFavoriteError,
    required TResult Function(RemoveFavoriteSuccess<T> value)
        removeFavoriteSuccess,
    required TResult Function(RemoveFavoriteError<T> value) removeFavoriteError,
  }) {
    return removeFavoriteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$Initial<T> value)? initial,
    TResult? Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult? Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult? Function(FavoriteError<T> value)? favoriteError,
    TResult? Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult? Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult? Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult? Function(RemoveFavoriteError<T> value)? removeFavoriteError,
  }) {
    return removeFavoriteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Initial<T> value)? initial,
    TResult Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult Function(FavoriteError<T> value)? favoriteError,
    TResult Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult Function(RemoveFavoriteError<T> value)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (removeFavoriteSuccess != null) {
      return removeFavoriteSuccess(this);
    }
    return orElse();
  }
}

abstract class RemoveFavoriteSuccess<T> implements FavoriteState<T> {
  const factory RemoveFavoriteSuccess(
          final AddAndRemoveFavouriteResponse removeFav) =
      _$RemoveFavoriteSuccessImpl<T>;

  AddAndRemoveFavouriteResponse get removeFav;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFavoriteSuccessImplCopyWith<T, _$RemoveFavoriteSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteErrorImplCopyWith<T, $Res> {
  factory _$$RemoveFavoriteErrorImplCopyWith(_$RemoveFavoriteErrorImpl<T> value,
          $Res Function(_$RemoveFavoriteErrorImpl<T>) then) =
      __$$RemoveFavoriteErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RemoveFavoriteErrorImplCopyWithImpl<T, $Res>
    extends _$FavoriteStateCopyWithImpl<T, $Res, _$RemoveFavoriteErrorImpl<T>>
    implements _$$RemoveFavoriteErrorImplCopyWith<T, $Res> {
  __$$RemoveFavoriteErrorImplCopyWithImpl(_$RemoveFavoriteErrorImpl<T> _value,
      $Res Function(_$RemoveFavoriteErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RemoveFavoriteErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteErrorImpl<T> implements RemoveFavoriteError<T> {
  const _$RemoveFavoriteErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FavoriteState<$T>.removeFavoriteError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteErrorImplCopyWith<T, _$RemoveFavoriteErrorImpl<T>>
      get copyWith => __$$RemoveFavoriteErrorImplCopyWithImpl<T,
          _$RemoveFavoriteErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favoriteLoading,
    required TResult Function(ProductResponse productResponse) favoriteSuccess,
    required TResult Function(String error) favoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse addFav)
        addFavoriteSuccess,
    required TResult Function(String error) addFavoriteError,
    required TResult Function(AddAndRemoveFavouriteResponse removeFav)
        removeFavoriteSuccess,
    required TResult Function(String error) removeFavoriteError,
  }) {
    return removeFavoriteError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favoriteLoading,
    TResult? Function(ProductResponse productResponse)? favoriteSuccess,
    TResult? Function(String error)? favoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult? Function(String error)? addFavoriteError,
    TResult? Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult? Function(String error)? removeFavoriteError,
  }) {
    return removeFavoriteError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favoriteLoading,
    TResult Function(ProductResponse productResponse)? favoriteSuccess,
    TResult Function(String error)? favoriteError,
    TResult Function(AddAndRemoveFavouriteResponse addFav)? addFavoriteSuccess,
    TResult Function(String error)? addFavoriteError,
    TResult Function(AddAndRemoveFavouriteResponse removeFav)?
        removeFavoriteSuccess,
    TResult Function(String error)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (removeFavoriteError != null) {
      return removeFavoriteError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$Initial<T> value) initial,
    required TResult Function(FavoriteLoading<T> value) favoriteLoading,
    required TResult Function(FavoriteSuccess<T> value) favoriteSuccess,
    required TResult Function(FavoriteError<T> value) favoriteError,
    required TResult Function(AddFavoriteSuccess<T> value) addFavoriteSuccess,
    required TResult Function(AddFavoriteError<T> value) addFavoriteError,
    required TResult Function(RemoveFavoriteSuccess<T> value)
        removeFavoriteSuccess,
    required TResult Function(RemoveFavoriteError<T> value) removeFavoriteError,
  }) {
    return removeFavoriteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$Initial<T> value)? initial,
    TResult? Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult? Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult? Function(FavoriteError<T> value)? favoriteError,
    TResult? Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult? Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult? Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult? Function(RemoveFavoriteError<T> value)? removeFavoriteError,
  }) {
    return removeFavoriteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$Initial<T> value)? initial,
    TResult Function(FavoriteLoading<T> value)? favoriteLoading,
    TResult Function(FavoriteSuccess<T> value)? favoriteSuccess,
    TResult Function(FavoriteError<T> value)? favoriteError,
    TResult Function(AddFavoriteSuccess<T> value)? addFavoriteSuccess,
    TResult Function(AddFavoriteError<T> value)? addFavoriteError,
    TResult Function(RemoveFavoriteSuccess<T> value)? removeFavoriteSuccess,
    TResult Function(RemoveFavoriteError<T> value)? removeFavoriteError,
    required TResult orElse(),
  }) {
    if (removeFavoriteError != null) {
      return removeFavoriteError(this);
    }
    return orElse();
  }
}

abstract class RemoveFavoriteError<T> implements FavoriteState<T> {
  const factory RemoveFavoriteError({required final String error}) =
      _$RemoveFavoriteErrorImpl<T>;

  String get error;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFavoriteErrorImplCopyWith<T, _$RemoveFavoriteErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
