// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashOrderResponse _$CashOrderResponseFromJson(Map<String, dynamic> json) =>
    CashOrderResponse(
      shippingAddress: json['shippingAddress'] == null
          ? null
          : ShippingAddress.fromJson(
              json['shippingAddress'] as Map<String, dynamic>),
      taxPrice: (json['taxPrice'] as num?)?.toInt(),
      shippingPrice: (json['shippingPrice'] as num?)?.toInt(),
      totalOrderPrice: (json['totalOrderPrice'] as num?)?.toInt(),
      paymentMethodType: json['paymentMethodType'] as String?,
      isPaid: json['isPaid'] as bool?,
      isDelivered: json['isDelivered'] as bool?,
      sId: json['_id'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      id: (json['id'] as num?)?.toInt(),
      iV: (json['iV'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CashOrderResponseToJson(CashOrderResponse instance) =>
    <String, dynamic>{
      'shippingAddress': instance.shippingAddress,
      'taxPrice': instance.taxPrice,
      'shippingPrice': instance.shippingPrice,
      'totalOrderPrice': instance.totalOrderPrice,
      'paymentMethodType': instance.paymentMethodType,
      'isPaid': instance.isPaid,
      'isDelivered': instance.isDelivered,
      '_id': instance.sId,
      'user': instance.user,
      'cartItems': instance.cartItems,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'id': instance.id,
      'iV': instance.iV,
    };

ShippingAddress _$ShippingAddressFromJson(Map<String, dynamic> json) =>
    ShippingAddress(
      details: json['details'] as String?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$ShippingAddressToJson(ShippingAddress instance) =>
    <String, dynamic>{
      'details': instance.details,
      'phone': instance.phone,
      'city': instance.city,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      sId: json['_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.sId,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
    };

CartItems _$CartItemsFromJson(Map<String, dynamic> json) => CartItems(
      count: (json['count'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toInt(),
      sId: json['_id'] as String?,
    );

Map<String, dynamic> _$CartItemsToJson(CartItems instance) => <String, dynamic>{
      'count': instance.count,
      'product': instance.product,
      'price': instance.price,
      '_id': instance.sId,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      subcategory: (json['subcategory'] as List<dynamic>?)
          ?.map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      ratingsQuantity: (json['ratingsQuantity'] as num?)?.toInt(),
      sId: json['_id'] as String?,
      title: json['title'] as String?,
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

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'subcategory': instance.subcategory,
      'ratingsQuantity': instance.ratingsQuantity,
      '_id': instance.sId,
      'title': instance.title,
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
