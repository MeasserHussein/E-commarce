import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_response_model.g.dart';


@JsonSerializable()
class CartResponseModel {
final  String? status;
final int? numOfCartItems;
final String? cartId;
final DataModel? data;

  CartResponseModel({this.status, this.numOfCartItems, this.cartId, this.data});

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);
}
@JsonSerializable()
class DataModel {
  @JsonKey(name: '_id')
  final String? sId;
  final String? cartOwner;
  final List<ProductsList>? products;
  final int? totalCartPrice;



  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);

  DataModel({required this.sId, required this.cartOwner, required this.products, required this.totalCartPrice});
  }


@JsonSerializable()
class ProductsList {
  final int? count;
  @JsonKey(name: '_id')
  final String? sId;
  final ProductItem? product;
  final int? price;

  ProductsList(this.count, this.sId, this.product, this.price);
  factory ProductsList.fromJson(Map<String, dynamic> json) =>
      _$ProductsListFromJson(json);




}

@JsonSerializable()
class ProductItem {
  List<Subcategory>? subcategory;

  @JsonKey(name: '_id')
  final String? sId;
  final String? title;
  final int? quantity;
  final String? imageCover;
  final Category? category;
  final Category? brand;
  final double? ratingsAverage;
  final String? id;

  ProductItem(
      {this.subcategory,
        this.sId,
        this.title,
        this.quantity,
        this.imageCover,
        this.category,
        this.brand,
        this.ratingsAverage,
        this.id
      });
  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);

  }



@JsonSerializable()
class Subcategory {
  @JsonKey(name: '_id')
  final String? sId;
  final String? name;
  final String? slug;
  final String? category;

  Subcategory({this.sId, this.name, this.slug, this.category});

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);

}

@JsonSerializable()
class Category {
  @JsonKey(name: '_id')
  final String? sId;
  final String? name;
  final String? slug;
  final String? image;

  Category({this.sId, this.name, this.slug, this.image});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
