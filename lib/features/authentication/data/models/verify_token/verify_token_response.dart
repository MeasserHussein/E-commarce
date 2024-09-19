
import 'package:json_annotation/json_annotation.dart';
part 'verify_token_response.g.dart';
@JsonSerializable()
class VerifyTokenResponse {
 final String? message;
 final Decoded? decoded;

  VerifyTokenResponse(this.message, this.decoded);

 factory VerifyTokenResponse.fromJson(Map<String ,dynamic>json) => _$VerifyTokenResponseFromJson(json);
}

@JsonSerializable()
class Decoded {
  final String? id;
  final String? name;
  final String? role;
  final int? iat;
  final int? exp;

  Decoded({this.id, this.name, this.role, this.iat, this.exp});

  factory Decoded.fromJson(Map<String ,dynamic>json) => _$DecodedFromJson(json);

}
