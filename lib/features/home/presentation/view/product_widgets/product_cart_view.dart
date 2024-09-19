import 'package:cached_network_image/cached_network_image.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/favorite_view/data/model/add_favorite/add_favorite_requist.dart';
import 'package:comamarce/features/favorite_view/presentation/manager/favorite_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/product_cubit.dart';
import 'package:comamarce/features/home/presentation/manager/product_cubit/product_state.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/custom_add_card_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../data/model/product_response_model/product_response.dart';

class ProductCartView extends StatelessWidget {
  const ProductCartView({super.key, required this.data});

  final ProductData data;

  @override
  Widget build(BuildContext context) {
    var cubit =context.read<FavoriteCubit>();
    return GestureDetector(
      onTap: () {
        context.push(AppRoute.detailsView, extra: data);
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(width: 1),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                CachedNetworkImage(
                  imageUrl: data.imageCover.toString(),
                  fit: BoxFit.cover,
                  height: 150.h,
                  width: double.infinity,
                ),
                 Padding(
                   padding:  EdgeInsets.only(top: 5.h,right: 5.w),
                   child:  GestureDetector(
                     onTap: (){
                       cubit.addFavorite(SharedPrefKeys.userToken, AddFavoriteRequest(productId: data.id??''));
                     },
                     child: CircleAvatar(
                       radius: 17,
                         backgroundColor: Colors.grey[300],
                         child:  const Icon(Icons.favorite_border,color: AppColors.primaryBlueColor,)

                     ),
                   ),
                 )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title.toString(),
                    style: Styles.textStyle16.copyWith(
                      color: AppColors.primaryBlueColor,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    data.description.toString(),
                    style: Styles.textStyle16.copyWith(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'EGP ${data.priceAfterDiscount ?? data.price}',
                        style: Styles.textStyle16.copyWith(
                            color: AppColors.primaryBlueColor,
                            fontWeight: FontWeight.w600),
                        maxLines: 1,
                      ),
                      if (data.priceAfterDiscount != null)
                        const SizedBox(
                          width: 5,
                        ),
                      if (data.priceAfterDiscount != null)
                        Text(
                          'EGP ${data.price}',
                          style: Styles.textStyle16.copyWith(
                              color: AppColors.primaryBlueColor,
                              decoration: TextDecoration.lineThrough),
                          maxLines: 1,
                        ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Review (${data.ratingsAverage})',
                        style: Styles.textStyle16
                            .copyWith(color: AppColors.primaryBlueColor),
                        maxLines: 1,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const Spacer(),
                      GestureDetector(
                          onTap: () {
                            context
                                .read<AddToCartCubit>()
                                .doneAdd(data, SharedPrefKeys.userToken);
                          },
                          child: const CustomAddCardIcon(
                            backgroundColor: AppColors.primaryBlueColor,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
