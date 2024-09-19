import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/widgets/text_button.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_state.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CondtitinalBuilderBlocBuilder extends StatelessWidget {
  const CondtitinalBuilderBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) {
        var cubit = context.read<SignupCubit>();
        return ConditionalBuilder(
          condition: !cubit.isLoading,
          builder: (context) => Expanded(
            child: AppTextButton(
              onPressed: () {
                cubit.signupValidation();
              },
              text: 'REGISTER',
              backgroundColor: AppColors.primaryBlueColor,
            ),
          ),
          fallback: (context) => LoadingAnimationWidget.threeArchedCircle(
              color: AppColors.primaryBlueColor, size: 30),
        );
      },
    );
  }
}
