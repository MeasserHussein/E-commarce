import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:flutter/material.dart';

class CategoryAndViewAll extends StatelessWidget {
  const CategoryAndViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      Text('categories',style: Styles.textStyle20.copyWith(
          color: AppColors.primaryBlueColor,
          fontWeight: FontWeight.bold
      ),),
      const Spacer(),
      TextButton(onPressed: (){}, child: Text('view all',style: Styles.textStyle16.copyWith(
          color: AppColors.primaryBlueColor
      ),))
    ],);
  }
}
