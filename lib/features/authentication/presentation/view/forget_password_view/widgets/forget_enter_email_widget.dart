import 'package:comamarce/core/units/routing/app_routes.dart';
import 'package:comamarce/features/authentication/presentation/manager/forget_password_cubit/forget_password_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/forget_password_cubit/forget_password_state.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../../../core/widgets/text_form_field_widget.dart';


class ForgetEnterEmailWidget extends StatelessWidget {
  const ForgetEnterEmailWidget({super.key});


  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ForgetPasswordCubit>();
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if(state is ForgetPasswordSuccess){
         context.push(AppRoute.resetPassword);
        }
      },
      builder: (context, state) {
        return Form(
          key: cubit.formKey,
          child: Column(
            children: [
              AppTextFormField(
                controller: cubit.emailController,
                validator: (value) {
                  if (value == null || (value == '')) {
                    return 'Please, enter email';
                  }
                  return null;
                },
                hintText: 'Enter Email',
                keyboardType: TextInputType.emailAddress,
              ),
               SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                 ConditionalBuilder(
                     condition: !cubit.isLoading,
                     builder: (context)=> Expanded(
                       child: AppTextButton(
                         text: 'Submit',
                         styles: Styles.textStyle22,
                         onPressed: () {
                           cubit.forgetPasswordValidation();
                         },
                         backgroundColor: AppColors.primaryBlueColor,
                       ),
                     ),
                     fallback: (context)=>const Expanded(child: Center(child: CircularProgressIndicator(color: AppColors.primaryBlueColor,)))
                 )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}