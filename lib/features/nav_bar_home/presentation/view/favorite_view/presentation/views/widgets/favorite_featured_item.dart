import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../manager/favorite_cubit/favorite_cubit.dart';

class FavoriteFeaturedItems extends StatelessWidget {
  const FavoriteFeaturedItems({
    super.key, required this.products,
  });
  final ProductData products;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: (){
              context.read<FavoriteCubit>().removeFavorite(SharedPrefKeys.userToken, products.id!);
            },
              child: const Icon(Icons.highlight_remove_outlined,color: Colors.red,size: 35,)),
        ),
        Text(
          products.title.toString(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle22
              .copyWith(fontWeight: FontWeight.bold,color: AppColors.primaryBlueColor),
        ),
         SizedBox(
          height: 10.h,
        ),
        Text(
            products.description.toString(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle16.copyWith(color: AppColors.primaryBlueColor)),
         SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Text(
                '${products.price} LE',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle22.copyWith(color: AppColors.primaryBlueColor)),
            const Spacer(),
            Text(
                '${products.ratingsAverage}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle16.copyWith(color: AppColors.primaryBlueColor)),
            const Icon(Icons.star,color: Colors.yellow,)
          ],
        ),

      ],
    );
  }
}