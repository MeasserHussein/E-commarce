import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/authentication/data/models/otp_code_model/otp_code_request_body.dart';
import 'package:comamarce/features/authentication/data/models/otp_code_model/otp_response.dart';

class OtpRepo{
  final ApiService _apiService;

  OtpRepo(this._apiService);

  Future<ApiResult<OtpResposne>> otpCode(OtpCodeRequestBody otpCodeRequestBody) async{
    try{
      var response =await _apiService.otpCode(otpCodeRequestBody);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}