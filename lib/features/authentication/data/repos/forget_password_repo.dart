

import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/authentication/data/models/forget_password_model/forget_password_request.dart';
import 'package:comamarce/features/authentication/data/models/forget_password_model/forget_password_response.dart';

class ForgetPasswordRepo{
  final ApiService apiService;

  ForgetPasswordRepo(this.apiService);

  Future<ApiResult<ForgetPasswordResponse>> loginUser(ForgetPasswordRequest forgetPassword) async{
    try{
      var response = await apiService.forgetPassword(forgetPassword);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }


}
