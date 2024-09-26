import 'package:comamarce/core/widgets/animated_rating.dart';
import 'package:comamarce/features/nav_bar_home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/units/styles.dart';

class RatingDetailsBody extends StatelessWidget {
  const RatingDetailsBody({super.key, required this.data, });

  final ProductData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         AnimatedRating(data: data,),
         SizedBox(
          width: 5.w,
        ),
        Text(
          '(${data.ratingsAverage})',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),

      ],
    );
  }
}