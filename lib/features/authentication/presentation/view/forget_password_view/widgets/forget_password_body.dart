import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/design_auth_container.dart';
import 'forget_enter_email_widget.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
        child: DesignAuthContainer(
          color: Colors.white,
          widget: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(height: 10.h,),
                Image.asset(
                  'assets/images/forget.jpg',
                  width: 200.w,
                ),
                 SizedBox(
                  height: 30.h,
                ),
                Text(
                    textAlign: TextAlign.center,
                    'Please, inter your email',
                    style: Styles.textStyle24w600.copyWith(
                      color: AppColors.primaryBlueColor,
                    )),
                 SizedBox(
                  height: 20.h,
                ),
                const ForgetEnterEmailWidget(),
                 SizedBox(
                  height: 60.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}