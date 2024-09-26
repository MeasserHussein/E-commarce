
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/shared/helper/shared_pref_helper.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';

import 'package:comamarce/features/payment/data/repos/checkout_repo_impl.dart';
import 'package:comamarce/features/payment/presentation/views/widgets/payment_method_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../payment/presentation/manager/payment_cubit.dart';
import '../../../data/model/chash_order_response/cash_order_request.dart';
import '../../../data/repo/cash_order_repo/cash_oreder_repo.dart';
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
  void sendDataPayment(String cartId , String token,BuildContext context, CartResponseModel cartResponseModel){
    if(formKey.currentState!.validate()){
      postAddress(cartId,
          token,
          CashOrderRequest(
            phone: phoneController.text,
            address: addressController.text,
            city: cityController.text,
          )
      );
      showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)),
        context: context,
        builder: (context) {
          return BlocProvider(
            create: (context) =>
                PaymentCubit(CheckoutRepoImpl()),
            child: PaymentMethodBottomSheet(
                cartResponseModel: cartResponseModel),
          );
        },
      );
    }
  }




}
