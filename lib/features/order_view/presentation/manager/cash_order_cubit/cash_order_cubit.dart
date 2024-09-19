
import 'package:comamarce/core/units/dio_factory.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/shared/helper/shared_pref_helper.dart';
import 'package:comamarce/features/authentication/data/models/verify_token/verify_token_response.dart';
import 'package:comamarce/features/order_view/data/model/chash_order_response/cash_order_request.dart';
import 'package:comamarce/features/order_view/data/repo/cash_oreder_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cash_order_state.dart';

class CashOrderCubit extends Cubit<CashOrderState> {

  CashOrderCubit(this._cashOrderRepo) : super(const CashOrderState.initial());
  final CashOrderRepo _cashOrderRepo;
  int? selectedValue;

  final formKey = GlobalKey<FormState>();


  bool isLoading = false;
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();

  void getOrders(String userId)async{
    emit(const CashOrderState.orderLoading());
    userId =await SharedPrefHelper.getSecuredString(SharedPrefKeys.userId);
    var response = await _cashOrderRepo.getOrders(userId);
    response.when(success: (cashOrderResponse){
      emit(CashOrderState.orderSuccess(cashOrderResponse:cashOrderResponse ));
    }, failure: (error){
      emit(CashOrderState.error(error: error.failure.message!));
    });
  }



  void postAddress(String cartId , String token, CashOrderRequest cashOrderRequest)async{
  emit(const CashOrderState.loading());
  isLoading = true;
  token =await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  var response = await _cashOrderRepo.postCashOrder(cartId, token, cashOrderRequest);
  response.when(success: (cashOrderResponse){
    isLoading = false;
    emit(CashOrderState.success(cashOrderResponse: cashOrderResponse));
  }, failure: (error){
    isLoading = false;
    emit(CashOrderState.error(error: error.failure.message!));
  });
}

void sendData(String cartId , String token,){
  if(formKey.currentState!.validate()){
    postAddress(cartId,
        token,
        CashOrderRequest(
          phone: phoneController.text,
          address: addressController.text,
          city: cityController.text,
        )
    );
  }
}




}
