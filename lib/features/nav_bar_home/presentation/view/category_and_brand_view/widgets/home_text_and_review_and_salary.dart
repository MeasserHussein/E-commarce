import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTextAndReviewAndSalary extends StatelessWidget {
  const HomeTextAndReviewAndSalary({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('New Cooker',style: Styles.textStyle20.copyWith(
            color: AppColors.primaryBlueColor,
          ),),
          SizedBox(height: 5.h,),
          Row(
            children: [
              Text('Review (4.8)',style: Styles.textStyle16.copyWith(
                color: AppColors.primaryBlueColor,
              ),),
              const Icon(Icons.star,color: Colors.yellow,)
            ],
          ),
          SizedBox(height: 3.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('EGP 8000',style: Styles.textStyle16.copyWith(
                color: AppColors.primaryBlueColor,
              ),),
              const CircleAvatar(
                radius: 15 ,
                backgroundColor: AppColors.primaryBlueColor,
                child: Icon(Icons.add,size: 30,),
              )
            ],
          ),
        ],
      ),
    );
  }
}
