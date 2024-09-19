import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_update_id_response.dart';

class CartRepo{
  final ApiService _apiService;

  CartRepo(this._apiService);

  Future<ApiResult<CartResponseModel>> getCart(String token) async{
    try{
      var response =await _apiService.getCart(token);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }


  Future<ApiResult<CartResponseModel>> updateCartProduct(String productId,CartUpdateIdRequest count,String token) async{
    try{
      var response =await _apiService.updateCartProduct(token, productId, count);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }


  Future<ApiResult<CartResponseModel>> deleteCartProduct(String productId,String token) async{
    try{
      var response =await _apiService.deleteCartProduct(token, productId);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

}