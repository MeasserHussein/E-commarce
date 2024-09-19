
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response.g.dart';
@JsonSerializable()
class SignupResponse{
  final  User? user;
  final  String? token;

  SignupResponse(this.user, this.token);
  factory SignupResponse.fromJson(Map<String ,dynamic>json) => _$SignupResponseFromJson(json);

}

@JsonSerializable()

class User{
  final String? name;
  final String? email;

  User(this.name, this.email);

  factory User.fromJson(Map<String ,dynamic>json) => _$UserFromJson(json);
}