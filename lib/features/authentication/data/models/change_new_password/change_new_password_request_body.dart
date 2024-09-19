import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_new_password_request_body.g.dart';
@JsonSerializable()
class ChangeNewPasswordRequestBody{
  final String? email;
  final String? newPassword;

  ChangeNewPasswordRequestBody({required this.email, required this.newPassword});


  Map<String,dynamic> toJson() =>_$ChangeNewPasswordRequestBodyToJson(this);
}