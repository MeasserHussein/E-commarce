import 'package:comamarce/core/widgets/animated_rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/units/styles.dart';
import '../../../../home/data/model/product_response_model/product_response.dart';

class RatingDetailsBody extends StatelessWidget {
  const RatingDetailsBody({super.key, required this.data, });

  final ProductData data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         AnimatedRating(data: data,),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(${data.ratingsAverage})',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),

      ],
    );
  }
}