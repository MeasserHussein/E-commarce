
import 'package:comamarce/features/details_view/presentation/views/widgets/colors_and_size_list_view.dart';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/styles.dart';
import 'rating_details_body.dart';

class DetailsItems extends StatelessWidget {
  const DetailsItems({super.key, required this.data, });

final ProductData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              '${data.priceAfterDiscount ?? data.price} LE',
              style: Styles.textStyle20
                  .copyWith(fontWeight: FontWeight.bold, color: AppColors.primaryBlueColor),
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  '${data.brand!.name} brand',
                  style: Styles.textStyle16.copyWith(color: AppColors.primaryBlueColor),
                ),
                SizedBox(height: 10.h,),
                // const AppButtonIndexChange(productsList: ,),
              ],
            ),

          ],
        ),
         SizedBox(
          height: 20.h,
        ),
        Text(data.title.toString(),
            style: Styles.textStyle25.copyWith(
              fontWeight: FontWeight.w900,
              color: AppColors.primaryBlueColor
            )),
         SizedBox(
          height: 10.h,
        ),
        RatingDetailsBody(
          data: data,
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(data.description.toString(),
            style: Styles.textStyle18.copyWith(
              color: AppColors.primaryBlueColor
            ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30.h,
        ),
        const ColorsAndSizeListView(),
      ],
    );
  }
}
