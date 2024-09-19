import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_state.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_button.dart';

class LoginConditionalBuilderBlocBuilder extends StatelessWidget {
  const LoginConditionalBuilderBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        var cubit = context.read<LoginCubit>();
        return ConditionalBuilder(
          condition: !cubit.isLoading,
          builder: (context) =>
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      text: 'Login',
                      styles: Styles.textStyle22,
                      backgroundColor: AppColors.primaryBlueColor,
                      onPressed: () {
                        cubit.loginValidation();
                      },
                    ),
                  ),
                ],
              ),
          fallback: (context) =>
              Center(
                  child: LoadingAnimationWidget.waveDots(
                      color: AppColors.primaryBlueColor, size: 35)),
        );
      },
    );
  }
}
