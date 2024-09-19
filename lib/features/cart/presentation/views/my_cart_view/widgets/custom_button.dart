
import 'package:comamarce/core/di/dependecy_injection.dart';
import 'package:comamarce/features/cart/presentation/views/my_cart_view/widgets/create_order_bottom_sheet.dart';
import 'package:comamarce/features/order_view/presentation/manager/cash_order_cubit/cash_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../data/model/cart_response_model.dart';


class CustomButtonMyCart extends StatelessWidget {
  const CustomButtonMyCart({super.key, required this.cartResponseModel,});

  final CartResponseModel cartResponseModel;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CashOrderCubit>();
    return AppTextButton(
      styles: Styles.textStyle22,
      radius: 15,
      height: 60,
      text: 'Complete Payment',
      onPressed: () {
        if (cubit.selectedValue == 1) {
          showBottomSheet(
              context: context,
              builder: (context) {
                return const Text('done');
              });
        } else if (cubit.selectedValue == 2) {
          showModalBottomSheet(
            sheetAnimationStyle: AnimationStyle(
                curve: Curves.bounceIn,
                duration: const Duration(seconds: 1)),
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(16)),
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20.w, vertical: 32.h),
                child: MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) =>
                          CashOrderCubit(getIt()),
                    ),
                  ],
                  child: CreateOrderBottomSheet(
                    cartResponseModel:cartResponseModel,
                  ),
                ),
              );
            },
          );
        }
      },
      backgroundColor: AppColors.primaryBlueColor,
      textColor: Colors.white,
    );
  }
}

//context.push(AppRoute.paymentDetails);
// showModalBottomSheet(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(16),
//     ),
//     context: context, builder: (context) {
//   return BlocProvider(
//     create: (context) => PaymentCubit(),
//     child:  PaymentMethodBottomSheet(items: items),
//   );
// });