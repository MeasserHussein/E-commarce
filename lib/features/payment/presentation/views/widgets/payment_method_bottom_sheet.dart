import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/payment/presentation/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_button_bloc_consumer.dart';




class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key, required this.cartResponseModel});
final CartResponseModel cartResponseModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          const PaymentMethodsListView(),
          const SizedBox(
            height: 32,
          ),
         CustomButtonBlocConsumer(cartResponseModel:cartResponseModel ,),
        ],
      ),
    );
  }
}

