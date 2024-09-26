import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/units/routing/app_routes.dart';

class AliertDialongContinusShippingOrGoToCart extends StatelessWidget {
  const AliertDialongContinusShippingOrGoToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/thinking.webp'),
          SizedBox(height: 50.h,),
          TextButton(
              style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  backgroundColor: AppColors.primaryBlueColor,
                  side: const BorderSide(width: 2),
                  padding: const EdgeInsets.all(20)
              ),
              onPressed: (){
                context.push(AppRoute.myCart);
                context.pop();
              }, child: Text('Go To Cart',style: Styles.textStyle20.copyWith(
            color: Colors.white,
          ),)),
          SizedBox(height: 10.h,),
          TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(20)
              ),
              onPressed: (){
                context.pop();
              }, child: Text('continue shopping',style: Styles.textStyle20.copyWith(
            color: Colors.grey,
          ),)),
        ],
      ),
    );
  }
}