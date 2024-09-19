import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_request_body.g.dart';
@JsonSerializable()
class SignupRequestBody{
  final String? name;
  final String? email;
  final String? password;
  @JsonKey(name: 'rePassword')
  final String? confirmPassword;
  final String? phone;

  SignupRequestBody({required this.name, required this.email, required this.password, required this.confirmPassword, required this.phone});


  Map<String,dynamic> toJson()=> _$SignupRequestBodyToJson(this);
}