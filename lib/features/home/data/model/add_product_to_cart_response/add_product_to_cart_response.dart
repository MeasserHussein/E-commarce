

import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_to_cart_response.g.dart';
@JsonSerializable()
class AddProductToCartResponse {
 final String? status;
 final String? message;
 final int? numOfCartItems;
 final String? cartId;
 final DataAddProduct? data;

  AddProductToCartResponse(
      {this.status, this.message, this.numOfCartItems, this.cartId, this.data});

  factory AddProductToCartResponse.fromJson(Map<String, dynamic> json) =>
      _$AddProductToCartResponseFromJson(json);


}

@JsonSerializable()
class DataAddProduct {
  @JsonKey(name: '_id')
  final String? sId;
  final String? cartOwner;
  final List<ProductsAddToCart>? products;
  final int? totalCartPrice;

  DataAddProduct(
      {this.sId,
        this.cartOwner,
        this.products,
        this.totalCartPrice});


  factory DataAddProduct.fromJson(Map<String, dynamic> json) =>
      _$DataAddProductFromJson(json);

}

@JsonSerializable()
class ProductsAddToCart {
  final int? count;
  @JsonKey(name: '_id')
  final String? sId;
  final String? product;
  final int? price;

  ProductsAddToCart({this.count, this.sId, this.product, this.price});

  factory ProductsAddToCart.fromJson(Map<String, dynamic> json) =>
      _$ProductsAddToCartFromJson(json);
}
