
import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/authentication/data/models/login_model/login_request_body.dart';
import 'package:comamarce/features/authentication/data/models/login_model/login_response.dart';
import 'package:comamarce/features/authentication/data/models/verify_token/verify_token_response.dart';



class LoginRepoImpl{
  final ApiService apiService;

  LoginRepoImpl(this.apiService);

  Future<ApiResult<LoginResponse>> loginUser(LoginRequestBody user) async{
    try{
      var response = await apiService.loginUser(user);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<VerifyTokenResponse>> verifyToken(String token) async{
    try{
      var response = await apiService.getToken(token);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
