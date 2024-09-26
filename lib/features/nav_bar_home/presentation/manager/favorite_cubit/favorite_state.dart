import 'package:comamarce/features/nav_bar_home/data/model/add_favorite/add_favourite_response.dart';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';
@freezed
class FavoriteState<T> with _$FavoriteState<T>{
  const factory FavoriteState.initial() =_$Initial;
  const factory FavoriteState.favoriteLoading() =FavoriteLoading;
  const factory FavoriteState.favoriteSuccess(
  {
    required ProductResponse productResponse,
}
    ) =FavoriteSuccess;
  const factory FavoriteState.favoriteError({required String  error}) =FavoriteError;


  const factory FavoriteState.addFavoriteSuccess(AddAndRemoveFavouriteResponse addFav) =AddFavoriteSuccess;
  const factory FavoriteState.addFavoriteError({required String  error}) =AddFavoriteError;


  const factory FavoriteState.removeFavoriteSuccess(AddAndRemoveFavouriteResponse removeFav) =RemoveFavoriteSuccess;
  const factory FavoriteState.removeFavoriteError({required String  error}) =RemoveFavoriteError;

}