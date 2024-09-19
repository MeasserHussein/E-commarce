import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/core/widgets/text_button.dart';
import 'package:comamarce/core/widgets/text_form_field_widget.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_state.dart';
import 'package:comamarce/features/authentication/presentation/view/register_view/widgets/signup_bloc_builder_text_field.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'condtitinal_bulider_bloc_builder.dart';

class SignupTextFormField extends StatelessWidget {
  const SignupTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SignupCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          AppTextFormField(
              controller: cubit.nameController,
              validator: (value) {
                if (value == null || (value == '')) {
                  return 'Enter Name';
                }
                return null;
              },
              hintText: 'First Name'),
           SizedBox(
            height: 20.h,
          ),
          AppTextFormField(
              indexLenght: 11,
              controller: cubit.phoneController,
              validator: (value) {
                if (value == null || (value == '')) {
                  return 'Enter Phone Number';
                }
                return null;
              },
              hintText: 'Phone Number'),
           SizedBox(
            height: 20.h,
          ),
          AppTextFormField(
              onChange: (data) {
                cubit.emailController.text = data;
              },
              controller: cubit.emailController,
              validator: (value) {
                if (value == null || (value == '')) {
                  return 'Enter New Password';
                }
                return null;
              },
              hintText: 'Email'),
          const SizedBox(
            height: 10,
          ),
          AppTextFormField(
              suffixIcon: GestureDetector(
                  onTap: () {
                    cubit.changePasswordVisibility();
                  },
                  child: Icon(Icons.visibility,color: cubit.color,)),
              isObscureText: cubit.isPassword,
              controller: cubit.passwordController,
              validator: (value) {
                if (value == null || (value == '')) {
                  return 'Enter New Password';
                }
                return null;
              },
              hintText: 'Password'),
           SizedBox(
            height: 10.h,
          ),
          AppTextFormField(
              suffixIcon: GestureDetector(
                onTap: () {
                  cubit.changePasswordVisibility2();
                },
                child: Icon(Icons.visibility,color: cubit.color2,),),
              isObscureText: cubit.isPassword2,
              textInputAction: TextInputAction.done,
              controller: cubit.rePasswordController,
              validator: (value) {
                if (value == null || (value == '')) {
                  return 'Password does not match';
                }
                return null;
              },
              hintText: 'Conform password'),
           SizedBox(
            height: 40.h,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CondtitinalBuilderBlocBuilder(),
            ],
          ),
        ],
      ),
    );
  }
}
