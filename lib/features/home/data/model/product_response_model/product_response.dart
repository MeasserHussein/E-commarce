//
//
//
// import 'package:json_annotation/json_annotation.dart';
// part 'product_response.g.dart';
// @JsonSerializable()
// class ProductResponse {
//  final List<Data?>? data;
//
//   ProductResponse(this.data);
//
//  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
//      _$ProductResponseFromJson(json);
//
// }
//
// @JsonSerializable()
// class Data{
//   final int sold;
//   final List<Images?>? images;
//   final List<SubCategory?>? subCategory;
//
//   @JsonKey(name: '_id')
//   final String? idData;
//   final String? title;
//   final String? description;
//   final int? quantity;
//   final int? price;
//   final Category? category;
//   final Brand? brand;
//   final double? ratingsAverage;
//   final String? imageCover;
//
//   factory Data.fromJson(Map<String, dynamic> json) =>
//       _$DataFromJson(json);
//
//   Data(this.sold, this.images, this.subCategory, this.idData, this.title, this.description, this.quantity, this.price, this.category, this.brand, this.ratingsAverage, this.imageCover);
//
// }
//
//
//
// @JsonSerializable()
// class Images{
//  final String? images;
//
//   Images({required this.images});
//  factory Images.fromJson(Map<String, dynamic> json) =>
//      _$ImagesFromJson(json);
// }
//
// @JsonSerializable()
// class SubCategory{
//   @JsonKey(name: '_id')
//   final String? idCategory;
//   final String? name;
//   final String? slug;
//   final String? category;
//
//   SubCategory(this.idCategory, this.name, this.slug, this.category);
//   factory SubCategory.fromJson(Map<String, dynamic> json) =>
//       _$SubCategoryFromJson(json);
// }
//
//
//
// @JsonSerializable()
// class Category{
//   @JsonKey(name: '_id')
//   final String? idCategory;
//   @JsonKey(name: 'name')
//   final String? nameCategory;
//   @JsonKey(name: 'slug')
//   final String? slugCategory;
//   @JsonKey(name: 'image')
//   final String? imageCategory;
//
//   Category(this.idCategory, this.nameCategory, this.slugCategory, this.imageCategory);
//   factory Category.fromJson(Map<String, dynamic> json) =>
//       _$CategoryFromJson(json);
// }
//
//
// @JsonSerializable()
// class Brand{
//   @JsonKey(name: '_id')
//   final String? idBrand;
//   @JsonKey(name: 'name')
//   final String? nameBrand;
//   @JsonKey(name: 'slug')
//   final String? slugBrand;
//   @JsonKey(name: 'image')
//   final String? imageBrand;
//
//   Brand(this.idBrand, this.nameBrand, this.slugBrand, this.imageBrand);
//
//   factory Brand.fromJson(Map<String, dynamic> json) =>
//       _$BrandFromJson(json);
// }
import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';
@JsonSerializable()
class ProductResponse {
  int? results;
  Metadata? metadata;
  List<ProductData>? data;

  ProductResponse({this.results, this.metadata, this.data});

  factory ProductResponse.fromJson(Map<String,dynamic>json)=>
      _$ProductResponseFromJson(json);
}

@JsonSerializable()
class Metadata {
  int? currentPage;
  int? numberOfPages;
  int? limit;
  int? nextPage;

  Metadata({this.currentPage, this.numberOfPages, this.limit, this.nextPage});

  factory Metadata.fromJson(Map<String,dynamic>json)=>
      _$MetadataFromJson(json);
}

@JsonSerializable()
class ProductData {
  int? sold;
  List<String>? images;
  List<Subcategory>? subcategory;
  int? ratingsQuantity;
  @JsonKey(name: '_id')
  String? sId;
  String? title;
  String? slug;
  String? description;
  int? quantity;
  int? price;
  String? imageCover;
  Category? category;
  Category? brand;
  double? ratingsAverage;
  String? createdAt;
  String? updatedAt;
  String? id;
  int? priceAfterDiscount;

  ProductData(
      {this.sold,
        this.images,
        this.subcategory,
        this.ratingsQuantity,
        this.sId,
        this.title,
        this.slug,
        this.description,
        this.quantity,
        this.price,
        this.imageCover,
        this.category,
        this.brand,
        this.ratingsAverage,
        this.createdAt,
        this.updatedAt,
        this.id,
        this.priceAfterDiscount,
        });

  factory ProductData.fromJson(Map<String,dynamic>json)=>
    _$ProductDataFromJson(json);


}

@JsonSerializable()
class Subcategory {
  String? sId;
  String? name;
  String? slug;
  String? category;

  Subcategory({this.sId, this.name, this.slug, this.category});

  factory Subcategory.fromJson(Map<String,dynamic>json)=>
      _$SubcategoryFromJson(json);
}

@JsonSerializable()
class Category {
  String? sId;
  String? name;
  String? slug;
  String? image;

  Category({this.sId, this.name, this.slug, this.image});

  factory Category.fromJson(Map<String,dynamic>json)=>
      _$CategoryFromJson(json);
}

