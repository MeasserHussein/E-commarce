import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/home/data/model/home_category_response.dart';

class HomeCategoryRepo{
  final ApiService _apiService;

  HomeCategoryRepo(this._apiService);

  Future<ApiResult<HomeCategoryAndBrandsResponse>>  getCategory() async {
    try{
      var response = await _apiService.getCategories();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<HomeCategoryAndBrandsResponse>>  getBrands() async {
    try{
      var response = await _apiService.getBrands();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}