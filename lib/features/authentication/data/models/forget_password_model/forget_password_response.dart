

import 'package:json_annotation/json_annotation.dart';

part 'forget_password_response.g.dart';
@JsonSerializable()
class ForgetPasswordResponse{
  final String? statusMsg;
  final String? message;

  ForgetPasswordResponse({required this.statusMsg, required this.message});

  factory ForgetPasswordResponse.fromJson(Map<String,dynamic>json)
  => _$ForgetPasswordResponseFromJson(json);
}