import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';

import '../../features/home_view/presentation/views/widgets/app_favorite_icon.dart';
import '../units/styles.dart';

class PriceAndFavoriteIcon extends StatelessWidget {
  const PriceAndFavoriteIcon({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$text LE',
            style: Styles.textStyle22.copyWith(color: AppColors.primaryBlueColor),
          ),
          const AppFavoriteIcon()
        ]);
  }
}