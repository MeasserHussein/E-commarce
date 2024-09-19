// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyTokenResponse _$VerifyTokenResponseFromJson(Map<String, dynamic> json) =>
    VerifyTokenResponse(
      json['message'] as String?,
      json['decoded'] == null
          ? null
          : Decoded.fromJson(json['decoded'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyTokenResponseToJson(
        VerifyTokenResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'decoded': instance.decoded,
    };

Decoded _$DecodedFromJson(Map<String, dynamic> json) => Decoded(
      id: json['id'] as String?,
      name: json['name'] as String?,
      role: json['role'] as String?,
      iat: (json['iat'] as num?)?.toInt(),
      exp: (json['exp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DecodedToJson(Decoded instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'iat': instance.iat,
      'exp': instance.exp,
    };
