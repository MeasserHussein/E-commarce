import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_new_password_response.g.dart';
@JsonSerializable()
 class ChangeNewPasswordResponse{
  final String? token;

  ChangeNewPasswordResponse(this.token);
   factory  ChangeNewPasswordResponse.fromJson(Map<String,dynamic>json)
  => _$ChangeNewPasswordResponseFromJson(json);
}