import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/widgets/text_form_field_widget.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:comamarce/features/order_view/presentation/manager/cash_order_cubit/cash_order_cubit.dart';
import 'package:comamarce/features/order_view/presentation/manager/cash_order_cubit/cash_order_state.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CreateOrderBottomSheet extends StatelessWidget {
  const CreateOrderBottomSheet({super.key, required this.cartResponseModel});

  final CartResponseModel cartResponseModel;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<CashOrderCubit>();
    return BlocConsumer<CashOrderCubit, CashOrderState>(
      listener: (context, state) {
        if (state is Success) {
          context.go(AppRoute.home);
        }
      },
      builder: (context, state) {
        return Form(
          key: cubit.formKey,
          child: Column(
            children: [
              AppTextFormField(
                controller: cubit.addressController,
                hintText: 'Address',
                validator: (value) {
                  if (value == null || value == '') {
                    return 'required';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              AppTextFormField(
                controller: cubit.phoneController,
                hintText: 'Phone Number',
                maxLength: 11,
                validator: (value) {
                  if (value == null || value == '') {
                    return 'required';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              AppTextFormField(
                controller: cubit.cityController,
                hintText: 'City',
                validator: (value) {
                  if (value == null || value == '') {
                    return 'required';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                      child: ConditionalBuilder(
                        condition: !cubit.isLoading,
                        builder: (context) => ElevatedButton(
                            style: TextButton.styleFrom(
                                backgroundColor: AppColors.primaryBlueColor),
                            onPressed: () {
                              cubit.sendData(cartResponseModel.cartId!,
                                  SharedPrefKeys.userToken);
                            },
                            child: const Text('Send')),
                        fallback: (context) => Center(
                            child: LoadingAnimationWidget.waveDots(
                                color: AppColors.primaryBlueColor, size: 35)),
                      )),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}