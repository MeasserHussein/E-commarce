//
//
// import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'cart_state.freezed.dart';
// @freezed
// class CartItemState<T> with _$CartItemState<T>{
//   const factory  CartItemState.initial() =_Initial;
//
//   const factory  CartItemState.cartLoading() =CartLoading;
//   const factory  CartItemState.cartUpdateLoading() =CartUpdateLoading;
//   const factory CartItemState.cartSuccess(CartResponseModel cartResponse) = CartSuccess;
//
//   const factory CartItemState.cartError({required String error}) = CartError;
//
//
//   const factory CartItemState.changeIncrement() = ChangeIncrement;
//
//   const factory  CartItemState.changeDecrement() = ChangeDecrement;
//
// }


import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';

abstract class CartItemState{}

class Initial extends CartItemState{}
class Loading extends CartItemState{}
class Success extends CartItemState{
  final CartResponseModel cartResponseModel;

  Success(this.cartResponseModel);
}

class Error extends CartItemState{
  final String? error;

  Error(this.error);
}

class ChangeSuccess extends CartItemState{}


