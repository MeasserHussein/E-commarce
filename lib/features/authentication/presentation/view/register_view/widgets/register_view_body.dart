import 'package:comamarce/core/widgets/show_snack_bar.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:comamarce/features/authentication/presentation/view/login_view/widgets/text_form_field_widget.dart';
import 'package:comamarce/features/authentication/presentation/view/register_view/widgets/signup_bloc_builder_error_view.dart';
import 'package:comamarce/features/authentication/presentation/view/register_view/widgets/signup_text_form_field.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../../../core/widgets/text_form_field_widget.dart';
import 'custom_register_button.dart';
import 'signup_bloc_builder_text_field.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Register your account to open story',
                textAlign: TextAlign.center,
                style: Styles.textStyle24w600
                    .copyWith(color: AppColors.primaryBlueColor),
              ),
              const SizedBox(
                height: 10,
              ),
              const SignupBlocBuilderErrorView(),
              const SignupBlocBuilderTextField(),
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                height: 10,
              ),
              const CustomRegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
