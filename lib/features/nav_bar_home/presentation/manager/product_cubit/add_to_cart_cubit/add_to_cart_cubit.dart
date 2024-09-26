

import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/shared/helper/shared_pref_helper.dart';
import 'package:comamarce/features/nav_bar_home/data/model/add_product_to_cart_response/add_product_request.dart';
import 'package:comamarce/features/nav_bar_home/data/repo/product_repo/product_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../data/model/product_response_model/product_response.dart';
import 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit( this._productRepo) : super(const AddToCartState.initial());

 final ProductRepo _productRepo;

  void addProduct(AddProductRequest addProduct,String token)async{
    emit(const AddToCartState.addLoading());
    token = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    var response = await _productRepo.addProductToCart(token, addProduct);
    response.when(success: (addProduct){
      emit(AddToCartState.addSuccess(addProduct));
    }, failure: (error){
      emit(AddToCartState.addError(error: error.failure.message ?? 'nonono'));
    });
  }

  void doneAdd(ProductData data,String token){
    addProduct(
        AddProductRequest(
          productId: data.id,
        ),
        token);
  }
}
