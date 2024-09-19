import 'package:json_annotation/json_annotation.dart';

part 'otp_code_request_body.g.dart';
@JsonSerializable()
class OtpCodeRequestBody{
 final String? resetCode;

  OtpCodeRequestBody({required this.resetCode});

 Map<String,dynamic> toJson()=> _$OtpCodeRequestBodyToJson(this);

}