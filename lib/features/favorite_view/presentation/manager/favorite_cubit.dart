


import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/shared/helper/shared_pref_helper.dart';
import 'package:comamarce/features/favorite_view/data/model/add_favorite/add_favorite_requist.dart';
import 'package:comamarce/features/favorite_view/data/repo/favorite_repo.dart';
import 'package:comamarce/features/favorite_view/presentation/manager/favorite_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(this._favoriteRepo) : super(const FavoriteState.initial());

  final FavoriteRepo _favoriteRepo;



  void getFavorite(String token)async{
    emit(const FavoriteState.favoriteLoading());
    token = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    var response = await _favoriteRepo.getFavorite(token);
    response.when(success: (productResponse){

      final products = productResponse.data ?? [];
      final   favorites= {for (var product in products) product.id ??'' : false};
      emit(FavoriteState.favoriteSuccess(productResponse: productResponse));
    }, failure: (error){
      emit(FavoriteState.favoriteError(error: error.failure.message!));
    });
  }

  void addFavorite(String token,AddFavoriteRequest addFav)async{
    emit(const FavoriteState.favoriteLoading());

    token =await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    var response = await _favoriteRepo.addFavorite(token,addFav);
    response.when(success: (addFavResponse){

      getFavorite(token);
      emit(FavoriteState.addFavoriteSuccess(addFavResponse));
    }, failure: (error){
      emit(FavoriteState.addFavoriteError(error: error.failure.message!));
    });
  }


  void removeFavorite(String token,String id)async{
    emit(const FavoriteState.favoriteLoading());
    token =await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    var response = await _favoriteRepo.removeFavorite(token,id);
    response.when(success: (removeFav){

      getFavorite(token);
      emit(FavoriteState.removeFavoriteSuccess(removeFav));
    }, failure: (error){
      emit(FavoriteState.removeFavoriteError(error: error.failure.message!));
    });
  }


  // void toggleFavorite(String productId,AddFavoriteRequest addFavoriteRequest)  {
  //   final currentState = state;
  //   if (currentState is FavoriteSuccess) {
  //     final isFavorite = currentState.favorites[productId] ?? false;
  //     final  success = (isFavorite
  //         ? removeFavorite(SharedPrefKeys.userToken, productId)
  //         :  addFavorite(SharedPrefKeys.userToken,addFavoriteRequest)) ;
  //
  //     if (isFavorite) {
  //       final updatedFavorites = Map<String, bool>.from(currentState.favorites);
  //       updatedFavorites[productId] = !isFavorite;
  //       emit(FavoriteState.favoriteSuccess(products: currentState.products, favorites: updatedFavorites, productResponse: currentState.productResponse));
  //     } else {
  //       emit(const FavoriteState.favoriteError(error: 'Failed to update favorite status'));
  //     }
  //   }
  // }
}
