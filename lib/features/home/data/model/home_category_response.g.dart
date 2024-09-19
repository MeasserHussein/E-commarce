// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeCategoryAndBrandsResponse _$HomeCategoryAndBrandsResponseFromJson(
        Map<String, dynamic> json) =>
    HomeCategoryAndBrandsResponse(
      json['result'] as String?,
      (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DataCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeCategoryAndBrandsResponseToJson(
        HomeCategoryAndBrandsResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'data': instance.data,
    };

DataCategory _$DataCategoryFromJson(Map<String, dynamic> json) => DataCategory(
      json['_id'] as String?,
      json['image'] as String?,
      json['name'] as String?,
      json['slug'] as String?,
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
    );

Map<String, dynamic> _$DataCategoryToJson(DataCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'slug': instance.slug,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
