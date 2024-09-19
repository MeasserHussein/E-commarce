import 'package:comamarce/features/order_view/data/model/chash_order_response/cash_order_response.dart';
import 'package:comamarce/features/order_view/presentation/views/widgets/modal_button_cheet_componant.dart';
import 'package:flutter/material.dart';

class ModalButtonSheetListView extends StatelessWidget {
  const ModalButtonSheetListView({super.key, required this.cashOrderResponse});

  final CashOrderResponse cashOrderResponse;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cashOrderResponse.cartItems!.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context,index)=> ModalButtonSheetComponant(
        cartItems: cashOrderResponse.cartItems![index],
      ),
    );
  }
}