
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/shared/helper/shared_pref_helper.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_update_id_response.dart';
import 'package:comamarce/features/cart/presentation/data/repo/cart_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_state.dart';

class CartItemCubit extends Cubit<CartItemState> {
  CartItemCubit(this._cartRepo,) : super(Initial());

  final CartRepo _cartRepo;
  int counter = 1;
  int? selectedValue;

  void getCart(String token,) async {
    emit(Loading());
    token = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    var response = await _cartRepo.getCart(token);
    response.when(success: (cartResponse) {
      emit(Success(cartResponse));
    }, failure: (error) {
      emit(Error(error.failure.message!));
    });
  }


  void updateCard(
      {required String productId, required CartUpdateIdRequest count, required String token}) async {
    token = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    var response = await _cartRepo.updateCartProduct(productId, count, token);
    response.when(success: (cartResponseModel) {
      emit(Success(cartResponseModel));
    }, failure: (error) {
      emit(Error(error.failure.message!));
    });
  }

  void deleteCard({required String productId, required String token}) async {
    emit(Loading());
    token = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    var response = await _cartRepo.deleteCartProduct(productId, token);
    response.when(success: (cartResponseModel) {
      emit(Success(cartResponseModel));
    }, failure: (error) {
      emit(Error(error.failure.message!));
    });
  }

  void changeIncrement(ProductsList productList) {
    counter++;
    updateCard(
        productId: productList.product?.id ?? ''
        , count: CartUpdateIdRequest(count: counter),
        token: SharedPrefKeys.userToken
    );
  }

  void changeDecrement(ProductsList productList) {
    if (counter > 1) {
      counter--;
    }
    updateCard(
        productId: productList.product?.id ?? '',
        count: CartUpdateIdRequest(count: counter),
        token: SharedPrefKeys.userToken
    );
  }
}



