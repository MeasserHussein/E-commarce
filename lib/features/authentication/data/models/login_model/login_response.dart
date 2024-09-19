
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse{
final  User? user;
final  String? token;

  LoginResponse(this.user, this.token);
factory LoginResponse.fromJson(Map<String ,dynamic>json) => _$LoginResponseFromJson(json);

}

@JsonSerializable()

class User{
  final String? name;
  final String? email;

  User(this.name, this.email);

  factory User.fromJson(Map<String ,dynamic>json) => _$UserFromJson(json);
}