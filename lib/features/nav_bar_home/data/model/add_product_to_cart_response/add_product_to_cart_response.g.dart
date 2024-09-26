// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_to_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProductToCartResponse _$AddProductToCartResponseFromJson(
        Map<String, dynamic> json) =>
    AddProductToCartResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
      numOfCartItems: (json['numOfCartItems'] as num?)?.toInt(),
      cartId: json['cartId'] as String?,
      data: json['data'] == null
          ? null
          : DataAddProduct.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddProductToCartResponseToJson(
        AddProductToCartResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'numOfCartItems': instance.numOfCartItems,
      'cartId': instance.cartId,
      'data': instance.data,
    };

DataAddProduct _$DataAddProductFromJson(Map<String, dynamic> json) =>
    DataAddProduct(
      sId: json['_id'] as String?,
      cartOwner: json['cartOwner'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductsAddToCart.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCartPrice: (json['totalCartPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataAddProductToJson(DataAddProduct instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'cartOwner': instance.cartOwner,
      'products': instance.products,
      'totalCartPrice': instance.totalCartPrice,
    };

ProductsAddToCart _$ProductsAddToCartFromJson(Map<String, dynamic> json) =>
    ProductsAddToCart(
      count: (json['count'] as num?)?.toInt(),
      sId: json['_id'] as String?,
      product: json['product'] as String?,
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductsAddToCartToJson(ProductsAddToCart instance) =>
    <String, dynamic>{
      'count': instance.count,
      '_id': instance.sId,
      'product': instance.product,
      'price': instance.price,
    };
