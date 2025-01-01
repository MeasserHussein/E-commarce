import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'home_category_response.g.dart';
@JsonSerializable()
class HomeCategoryAndBrandsResponse{
final String? result;
final List<DataCategory?>? data;

  HomeCategoryAndBrandsResponse(this.result, this.data);

factory HomeCategoryAndBrandsResponse.fromJson(Map<String, dynamic> json) =>
    _$HomeCategoryAndBrandsResponseFromJson(json);
}

@JsonSerializable()

class DataCategory{
  @JsonKey(name: '_id')

  final String? id;



  final String? image;



  final String? name;



  final String? slug;



  final String? createdAt;



  final String? updatedAt;



  DataCategory(this.id, this.image, this.name, this.slug, this.createdAt, this.updatedAt);

  factory DataCategory.fromJson(Map<String, dynamic> json) =>
      _$DataCategoryFromJson(json);
}