// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favourite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAndRemoveFavouriteResponse _$AddAndRemoveFavouriteResponseFromJson(
        Map<String, dynamic> json) =>
    AddAndRemoveFavouriteResponse(
      json['status'] as String,
      json['message'] as String,
      (json['data'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AddAndRemoveFavouriteResponseToJson(
        AddAndRemoveFavouriteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
