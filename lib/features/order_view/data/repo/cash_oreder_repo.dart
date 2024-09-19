import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/order_view/data/model/chash_order_response/cash_order_request.dart';
import 'package:comamarce/features/order_view/data/model/chash_order_response/cash_order_response.dart';


class CashOrderRepo {
  final ApiService _apiService;

  CashOrderRepo(this._apiService);

  Future<ApiResult<CashOrderResponse>> postCashOrder(String cartId,String token, CashOrderRequest cashOrderRequest)async{
    try{
      var response = await _apiService.postAddress(cartId, token, cashOrderRequest);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<CashOrderResponse>>> getOrders(String userId, )async{
    try{
      var response = await _apiService.getOrders(userId);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

}