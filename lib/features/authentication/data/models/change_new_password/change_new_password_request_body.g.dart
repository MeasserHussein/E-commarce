// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_new_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeNewPasswordRequestBody _$ChangeNewPasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ChangeNewPasswordRequestBody(
      email: json['email'] as String?,
      newPassword: json['newPassword'] as String?,
    );

Map<String, dynamic> _$ChangeNewPasswordRequestBodyToJson(
        ChangeNewPasswordRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'newPassword': instance.newPassword,
    };
