import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_response.g.dart';
@JsonSerializable()
class OtpResposne{
  final String? status;

  OtpResposne(this.status);

  factory OtpResposne.fromJson(Map<String ,dynamic>json) => _$OtpResposneFromJson(json);

}