import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/widgets/text_form_field_widget.dart';
import 'package:comamarce/features/nav_bar_home/data/model/add_product_to_cart_response/add_product_to_cart_response.dart';
import 'package:comamarce/features/nav_bar_home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:comamarce/features/nav_bar_home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_state.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:badges/badges.dart' as badges;

class SearchAndCartIcon extends StatelessWidget {
  const SearchAndCartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final AddProductToCartResponse addProductToCartResponse;
    return BlocBuilder<AddToCartCubit, AddToCartState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: AppTextFormField(
                contentPadding: EdgeInsets.zero,
                prefixIcon: Image.asset(
                  'assets/icons/search.png',
                  color: AppColors.primaryBlueColor,
                ),
                controller: TextEditingController(),
                hintText: 'what do you search for?',
                borderRadius: BorderRadius.circular(50.sp),
              ),
            ),
            SizedBox(
              width: 24.w,
            ),
            GestureDetector(
              onTap: () {
                context.push(AppRoute.myCart);
              },
              child: badges.Badge(
                badgeAnimation: const badges.BadgeAnimation.fade(
                    toAnimate: true,
                    loopAnimation: true,
                    animationDuration: Duration(seconds: 1),
                    curve: Curves.linear),
                badgeStyle: const badges.BadgeStyle(
                    badgeColor: AppColors.primaryBlueColor),
                badgeContent: state.whenOrNull(
                    addSuccess: (add) => Text(
                          add.numOfCartItems.toString(),
                          style: const TextStyle(color: Colors.white),
                        )),
                child: Image.asset(
                  'assets/icons/cart.png',
                  color: AppColors.primaryBlueColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
