// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignupRequestBody(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['rePassword'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignupRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'rePassword': instance.confirmPassword,
      'phone': instance.phone,
    };
