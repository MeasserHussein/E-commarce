import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/cart/presentation/views/manager/cart_cubit/cart_cubit.dart';
import 'package:comamarce/features/home/data/model/add_product_to_cart_response/add_product_request.dart';
import 'package:comamarce/features/home/data/model/add_product_to_cart_response/add_product_to_cart_response.dart';
import 'package:comamarce/features/home/data/model/product_response_model/product_response.dart';

class ProductRepo{
  final ApiService _apiService;

  ProductRepo(this._apiService);

  Future<ApiResult<ProductResponse>>  getProduct() async {
    try{
      var response = await _apiService.getProducts();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AddProductToCartResponse>>  addProductToCart(String token,AddProductRequest addProduct) async {
    try{
      var response = await _apiService.addProductToCart(token,addProduct);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }


}