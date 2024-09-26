import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/shared/helper/api_result.dart';
import 'package:comamarce/core/units/shared/helper/api_service.dart';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';

import '../../model/add_favorite/add_favorite_requist.dart';
import '../../model/add_favorite/add_favourite_response.dart';

class FavoriteRepo{
  final ApiService _apiService;

  FavoriteRepo(this._apiService);


  Future<ApiResult<ProductResponse>> getFavorite(String token)async{
    try{
      var response = await _apiService.getFavorite(token);
      return  ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AddAndRemoveFavouriteResponse>> addFavorite(String token,AddFavoriteRequest addFavoriteRequest)async{
    try{
      var response = await _apiService.addFavorite(token,addFavoriteRequest);
      return  ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
  Future<ApiResult<AddAndRemoveFavouriteResponse>> removeFavorite(String token,String productId)async{
    try{
      var response = await _apiService.removeFavorite(token,productId);
      return  ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }


  Future<ApiResult<AddAndRemoveFavouriteResponse>> favState(String token,String productId,bool isFav,AddFavoriteRequest addFavoriteRequest)async{
    try{
      if(isFav){
        var response = await _apiService.removeFavorite(token,productId);
        return  ApiResult.success(response);
      }else{
        var response = await _apiService.addFavorite(token,addFavoriteRequest);
        return  ApiResult.success(response);
      }
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}