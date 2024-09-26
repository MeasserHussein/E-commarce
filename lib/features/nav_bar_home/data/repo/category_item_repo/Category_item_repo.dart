import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/nav_bar_home/data/model/home_category_response.dart';

class CategoryItemRepo{
  final ApiService _apiService;

  CategoryItemRepo(this._apiService);

  Future<ApiResult<HomeCategoryAndBrandsResponse>>  getCategoryItems(String id) async {
    try{
      var response = await _apiService.getCategoryItem(id);
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

}