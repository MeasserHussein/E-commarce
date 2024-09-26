
import 'dart:core';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState<T> with _$ProductState<T> {
  const factory ProductState.initial() = _Initial;



  const factory ProductState.productLoading() =ProductLoading;

  const factory ProductState.productSuccess(
      {
        required ProductResponse productResponse
      }
      ) =ProductSuccess;

  const factory ProductState.productError({required String error} ) = ProductError;



  // const factory ProductState.addLoading() =AddLoading;
  //
  // const factory ProductState.addSuccess(AddProductToCartResponse addProduct) =AddSuccess;
  //
  // const factory ProductState.addError({required String error} ) =
  // AddError;
}