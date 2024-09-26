import 'package:json_annotation/json_annotation.dart';

part 'cash_order_response.g.dart';
@JsonSerializable()
class CashOrderResponse {
  ShippingAddress? shippingAddress;
  int? taxPrice;
  int? shippingPrice;
  int? totalOrderPrice;
  String? paymentMethodType;
  bool? isPaid;
  bool? isDelivered;
  @JsonKey(name: '_id')
  String? sId;
  User? user;
  List<CartItems>? cartItems;
  String? createdAt;
  String? updatedAt;
  int? id;
  int? iV;

  CashOrderResponse(
      {this.shippingAddress,
        this.taxPrice,
        this.shippingPrice,
        this.totalOrderPrice,
        this.paymentMethodType,
        this.isPaid,
        this.isDelivered,
        this.sId,
        this.user,
        this.cartItems,
        this.createdAt,
        this.updatedAt,
        this.id,
        this.iV});
  factory CashOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CashOrderResponseFromJson(json);

}

@JsonSerializable()
class ShippingAddress {
  String? details;
  String? phone;
  String? city;

  ShippingAddress({this.details, this.phone, this.city});

  factory ShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ShippingAddressFromJson(json);
}
@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  String? sId;
  String? name;
  String? email;
  String? phone;

  User({this.sId, this.name, this.email, this.phone});

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}
@JsonSerializable()
class CartItems {
  int? count;
  Product? product;
  int? price;
  @JsonKey(name: '_id')
  String? sId;

  CartItems({this.count, this.product, this.price, this.sId});

  factory CartItems.fromJson(Map<String, dynamic> json) =>
      _$CartItemsFromJson(json);
}
@JsonSerializable()
class Product {
  List<Subcategory>? subcategory;
  int? ratingsQuantity;
  @JsonKey(name: '_id')
  String? sId;
  String? title;
  String? imageCover;
  Category? category;
  Category? brand;
  double? ratingsAverage;
  String? id;

  Product(
      {this.subcategory,
        this.ratingsQuantity,
        this.sId,
        this.title,
        this.imageCover,
        this.category,
        this.brand,
        this.ratingsAverage,
        this.id});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
@JsonSerializable()
class Subcategory {
  @JsonKey(name: '_id')
  String? sId;
  String? name;
  String? slug;
  String? category;

  Subcategory({this.sId, this.name, this.slug, this.category});

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}
@JsonSerializable()
class Category {
  @JsonKey(name: '_id')
  String? sId;
  String? name;
  String? slug;
  String? image;

  Category({this.sId, this.name, this.slug, this.image});
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

}
