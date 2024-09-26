// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashOrderRequest _$CashOrderRequestFromJson(Map<String, dynamic> json) =>
    CashOrderRequest(
      address: json['details'] as String,
      phone: json['phone'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$CashOrderRequestToJson(CashOrderRequest instance) =>
    <String, dynamic>{
      'details': instance.address,
      'phone': instance.phone,
      'city': instance.city,
    };
