import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/widgets/show_snack_bar.dart';
import 'package:comamarce/core/widgets/text_button.dart';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:comamarce/features/nav_bar_home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:comamarce/features/nav_bar_home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/routing/app_routes.dart';

import 'details_featured.dart';

class CustomDraggableScrollableSheet extends StatelessWidget {
  const CustomDraggableScrollableSheet({
    super.key,
    required this.data,
  });

  final ProductData data;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddToCartCubit, AddToCartState>(
      listener: (context, state) {
        if (state is AddSuccess) {
          showSnackBar(context, 'Add Success To Cart');
        }
      },
      builder: (context, state) {
        return DraggableScrollableSheet(
          initialChildSize: 0.6,
          minChildSize: .6,
          maxChildSize: 1.0,
          builder: (context, scrollController) =>
              Container(
                clipBehavior: Clip.hardEdge,
                height: MediaQuery
                    .sizeOf(context)
                    .height,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.sp),
                      topLeft: Radius.circular(25.sp),
                    )),
                child: CustomScrollView(controller: scrollController, slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: DetailsFeatured(
                        data: data,
                      ),
                    ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: AppTextButton(
                                  onPressed: () {
                                    context
                                        .read<AddToCartCubit>()
                                        .doneAdd(
                                        data, SharedPrefKeys.userToken);
                                  },
                                  text: 'Add card',
                                  backgroundColor: AppColors.primaryBlueColor,
                                ),
                              ),
                              SizedBox(width: 5.w,),
                              GestureDetector(
                                  onTap: () {
                                    context.push(AppRoute.myCart);
                                  },
                                  child: Padding(
                                    padding:  EdgeInsets.only(bottom: 5.0.h),
                                    child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: AppColors.primaryBlueColor,
                                        child: Image.asset(
                                          'assets/icons/cart.png',
                                          color: Colors.white,)),
                                  ))
                            ],
                          )),
                    ),
                  )
                ]),
              ),
        );
      },
    );
  }
}