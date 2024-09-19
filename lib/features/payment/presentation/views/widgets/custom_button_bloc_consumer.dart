
import 'package:comamarce/features/payment/data/payment_intent_input_model.dart';
import 'package:comamarce/main.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/widgets/show_snack_bar.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../home_view/data/grid_item_model.dart';

import '../../manager/cart_cubit/cart_cubit.dart';
import '../../manager/payment_cubit.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({super.key, required this.items});
  final GridItemModel items;
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<PaymentCubit>();
    return  BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          context.pushReplacement(AppRoute.thankYou);
          // cart.clear();
        }
        if (state is PaymentError) {
          context.pop();
          showSnackBar(context, 'have a problem, please try again');
        }
      },
      builder: (context, state) {
        return BlocBuilder<CartCubit, CartState>(
  builder: (context, state) {
    var cartCubit = context.read<CartCubit>();
    return ConditionalBuilder(
            condition: !cubit.isLoading,
            builder: (context) => AppTextButton(
              onPressed: () {
                PaymentIntentInputModel paymentIntentInputModel=PaymentIntentInputModel(amount:'${items.finalPrice+cartCubit.total!}',currency: 'USD',customerId: 'cus_QT40PeMvJ3STA7');
                cubit.makePayment(paymentIntentInputModel: paymentIntentInputModel);
              },
              text: 'Continue',
              backgroundColor: AppColors.greenColor,
            ),
            fallback: (context) => Center(
              child: LoadingAnimationWidget.waveDots(
                  color: AppColors.primaryBlueColor, size: 35),
            ));
  },
);
      },
    );
  }
}