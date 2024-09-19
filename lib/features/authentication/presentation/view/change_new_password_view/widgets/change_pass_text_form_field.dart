import 'package:comamarce/features/authentication/presentation/manager/change_password/change_password_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/change_password/change_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../../../core/widgets/text_form_field_widget.dart';

class ChangeNewPasswordTextFormFieldWidget extends StatelessWidget {
  const ChangeNewPasswordTextFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit=context.read<ChangePasswordCubit>();
    return BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
      listener: (context, state) {
        if(state is ChangePasswordSuccess){
          context.go(AppRoute.login);
        }
      },
      builder: (context, state) {
        return Form(
          key:cubit.formKey,
          child: Column(
            children: [
              AppTextFormField(
                  controller: cubit.emailController,
                  validator: (value) {
                    if (value == null || (value == '')) {
                      return 'Enter New Email';
                    }
                    return null;
                  },
                  hintText: 'Email Address'),
              const SizedBox(
                height: 10,
              ),
              AppTextFormField(
                  controller: cubit.passwordController,
                  validator: (value) {
                    if (value == null || (value == '')) {
                      return 'This Password not exsist';
                    }
                    return null;
                  },
                  hintText: 'New Password'),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: AppTextButton(
                      onPressed: () {
                      cubit.changePasswordValidation();
                      },
                      text: 'Submit',
                      styles: Styles.textStyle24w600,
                      backgroundColor: AppColors.primaryBlueColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
