import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/authentication/data/models/change_new_password/change_new_password_request_body.dart';
import 'package:comamarce/features/authentication/data/models/change_new_password/change_new_password_response.dart';

class ChangePasswordRepo{
  final ApiService _apiService;

  ChangePasswordRepo(this._apiService);

  Future<ApiResult<ChangeNewPasswordResponse>> changePassword(ChangeNewPasswordRequestBody changePassword)async{
    try{
      var response = await _apiService.resetPassword(changePassword);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
  }