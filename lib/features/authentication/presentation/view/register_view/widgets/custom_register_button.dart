import 'package:comamarce/core/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';

class CustomRegisterButton extends StatelessWidget {
  const CustomRegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'You have an account?',
          style: Styles.textStyle14,
        ),
        const SizedBox(width: 5,),
        InkWell(
          onTap: () {
            context.pop();
          },
          child: Text(
            'Login',
            style: Styles.textStyle14.copyWith(
                color: AppColors.primaryBlueColor
            ),
          ),
        ),
      ],
    );
  }
}