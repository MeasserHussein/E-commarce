import 'package:cached_network_image/cached_network_image.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/features/cart/presentation/data/model/cart_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/units/styles.dart';
import '../../manager/cart_cubit/cart_cubit.dart';
import 'app_button_index_change.dart';

class FeaturedAnotherCard extends StatelessWidget {
  const FeaturedAnotherCard({super.key, required this.productsList});

  final ProductsList productsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.sp),
              side: const BorderSide(color: AppColors.primaryBlueColor))),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.sp),
            ),
            child: CachedNetworkImage(
              imageUrl: productsList.product!.imageCover.toString(),
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 200.w,
                    child: Text(
                      productsList.product!.title.toString(),
                      maxLines: 3,
                      overflow: TextOverflow.visible,
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold,color: AppColors.primaryBlueColor),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                         context.read<CartItemCubit>().deleteCard(productId: productsList.product!.id??'', token: SharedPrefKeys.userToken);
                      },
                      child: Icon(
                        Icons.delete_forever,
                        size: 35.sp,
                        color: Colors.red[300],
                      )),
                ],
              ),
              Container(
                width: 250.w,
                height: 1.5.h,
                color: Colors.grey[300],
                margin: EdgeInsets.symmetric(vertical: 10.h),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120.w,
                    child: Column(
                      children: [
                        Text(
                          'price : ${productsList.price} LE',
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                          style: Styles.textStyle16
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'total : ${productsList.price! * productsList.count!} LE',
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                          style: Styles.textStyle16
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  AppButtonIndexChange(
                    productsList: productsList,
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
