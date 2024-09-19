// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartResponseModel _$CartResponseModelFromJson(Map<String, dynamic> json) =>
    CartResponseModel(
      status: json['status'] as String?,
      numOfCartItems: (json['numOfCartItems'] as num?)?.toInt(),
      cartId: json['cartId'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CartResponseModelToJson(CartResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'numOfCartItems': instance.numOfCartItems,
      'cartId': instance.cartId,
      'data': instance.data,
    };

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      sId: json['_id'] as String?,
      cartOwner: json['cartOwner'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductsList.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCartPrice: (json['totalCartPrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      '_id': instance.sId,
      'cartOwner': instance.cartOwner,
      'products': instance.products,
      'totalCartPrice': instance.totalCartPrice,
    };

ProductsList _$ProductsListFromJson(Map<String, dynamic> json) => ProductsList(
      (json['count'] as num?)?.toInt(),
      json['_id'] as String?,
      json['product'] == null
          ? null
          : ProductItem.fromJson(json['product'] as Map<String, dynamic>),
      (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductsListToJson(ProductsList instance) =>
    <String, dynamic>{
      'count': instance.count,
      '_id': instance.sId,
      'product': instance.product,
      'price': instance.price,
    };

ProductItem _$ProductItemFromJson(Map<String, dynamic> json) => ProductItem(
      subcategory: (json['subcategory'] as List<dynamic>?)
          ?.map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      sId: json['_id'] as String?,
      title: json['title'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      imageCover: json['imageCover'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : Category.fromJson(json['brand'] as Map<String, dynamic>),
      ratingsAverage: (json['ratingsAverage'] as num?)?.toDouble(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ProductItemToJson(ProductItem instance) =>
    <String, dynamic>{
      'subcategory': instance.subcategory,
      '_id': instance.sId,
      'title': instance.title,
      'quantity': instance.quantity,
      'imageCover': instance.imageCover,
      'category': instance.category,
      'brand': instance.brand,
      'ratingsAverage': instance.ratingsAverage,
      'id': instance.id,
    };

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) => Subcategory(
      sId: json['_id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$SubcategoryToJson(Subcategory instance) =>
    <String, dynamic>{
      '_id': instance.sId,
      'name': instance.name,
      'slug': instance.slug,
      'category': instance.category,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      sId: json['_id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      '_id': instance.sId,
      'name': instance.name,
      'slug': instance.slug,
      'image': instance.image,
    };
