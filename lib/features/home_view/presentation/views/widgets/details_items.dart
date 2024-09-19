import 'package:comamarce/core/units/constant.dart';
import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/core/widgets/discount_view_widget.dart';
import 'package:comamarce/core/widgets/text_form_field_widget.dart';
import 'package:comamarce/features/cart/presentation/views/another_my_cart_view/widgets/app_button_index_change.dart';
import 'package:comamarce/features/home/data/model/product_response_model/product_response.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/colors_and_size_list_view.dart';
import 'package:comamarce/features/home_view/presentation/views/widgets/rating_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/units/app_colors.dart';
import '../../../../../core/units/styles.dart';

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
        //  SizedBox(
        //   height: 30.h,
        // ),
        // Container(
        //   margin: EdgeInsets.only(bottom: 20.h),
        //   padding:  EdgeInsets.all(10.sp),
        //   decoration:  ShapeDecoration(
        //       shape: RoundedRectangleBorder(
        //           side: BorderSide(width: .5.w, color: Colors.grey))),
        //   child: GestureDetector(
        //     onTap: () {
        //       context.push(AppRoute.review);
        //     },
        //     child: Column(
        //       children: [
        //          SizedBox(
        //           height: 190.h,
        //           child: const ReviewCommentListView(
        //             count: 4,
        //             physics: NeverScrollableScrollPhysics(),
        //           ),
        //         ),
        //          SizedBox(
        //           height: 10.h,
        //         ),
        //         AppTextFormField(
        //           enabled: false,
        //           controller: TextEditingController(),
        //           hintText: 'add comment',
        //           hintColor: Colors.black12,
        //           onTap: () {
        //             context.push(AppRoute.review);
        //           },
        //         ),
        //       ],
        //     ),
        //   ),
        // )
      ],
    );
  }
}

class ReviewCommentListView extends StatelessWidget {
  const ReviewCommentListView({
    super.key, this.physics, required this.count,
  });

  final ScrollPhysics? physics;
  final int count;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.ofWhiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Row(
          children: [
            const Icon(Icons.account_circle_outlined),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('USER', style: Styles.textStyle16),
                  Text(
                    'this book is fantastic',
                    style: Styles.textStyle16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      physics: physics,
    );
  }
}
