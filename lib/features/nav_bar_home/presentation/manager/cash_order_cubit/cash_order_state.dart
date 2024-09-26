import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/chash_order_response/cash_order_response.dart';
part 'cash_order_state.freezed.dart';
@freezed
class CashOrderState<T> with _$CashOrderState<T>{
  const factory CashOrderState.initial() =_$Initial;
  const factory CashOrderState.loading() =Loading;
  const factory CashOrderState.success({required CashOrderResponse cashOrderResponse}) =Success;
  const factory CashOrderState.error({required String  error}) =Error;


  const factory CashOrderState.orderLoading() =OrderLoading;
  const factory CashOrderState.orderSuccess({required List<CashOrderResponse> cashOrderResponse}) =OrderSuccess;
  const factory CashOrderState.orderError({required String  error}) =OrderError;




}
