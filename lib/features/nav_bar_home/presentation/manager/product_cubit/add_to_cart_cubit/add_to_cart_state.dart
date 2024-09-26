
import 'dart:core';
import 'package:comamarce/features/nav_bar_home/data/model/add_product_to_cart_response/add_product_to_cart_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_state.freezed.dart';

@freezed
class AddToCartState<T> with _$AddToCartState<T> {
  const factory AddToCartState.initial() = _Initial;


  const factory AddToCartState.addLoading() =AddLoading;

  const factory AddToCartState.addSuccess(AddProductToCartResponse addProduct) =AddSuccess;

  const factory AddToCartState.addError({required String error} ) =
  AddError;
}