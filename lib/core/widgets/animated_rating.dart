import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:comamarce/features/home/data/model/product_response_model/product_response.dart';
import 'package:flutter/material.dart';

import '../../features/home_view/data/grid_item_model.dart';

class AnimatedRating extends StatelessWidget {
  const AnimatedRating({super.key, this.size = 20.0, required this.data,});

  final double? size;
  final ProductData data;
  @override
  Widget build(BuildContext context) {
    return AnimatedRatingStars(
      initialRating:data.ratingsAverage!,
      minRating: 0.0,
      maxRating: 5.0,
      filledColor: Colors.amber,
      emptyColor: Colors.grey,
      filledIcon: Icons.star,
      halfFilledIcon: Icons.star_half,
      emptyIcon: Icons.star_border,
      onChanged: (double rating) {
        rating =data.ratingsAverage!;
      },
      displayRatingValue: true,
      interactiveTooltips: true,
      customFilledIcon: Icons.star,
      customHalfFilledIcon: Icons.star_half,
      customEmptyIcon: Icons.star_border,
      starSize: size ?? 20.0,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.easeInOut,
      readOnly: true,
    );
  }
}