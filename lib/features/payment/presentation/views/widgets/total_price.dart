
import 'package:comamarce/core/units/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/units/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
  final String title,value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: Styles.textStyle24w600.copyWith(
          color: AppColors.primaryBlueColor
        ),),
        const Spacer(),
        Text(r'$' '$value',style: Styles.textStyle24w600.copyWith(
    color: AppColors.primaryBlueColor),),

      ],
    );
  }
}