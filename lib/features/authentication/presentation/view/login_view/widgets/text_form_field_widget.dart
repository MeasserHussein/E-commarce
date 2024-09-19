import 'package:comamarce/features/authentication/presentation/manager/cubit/login_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_state.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_state.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../../../../core/units/app_colors.dart';
import '../../../../../../core/units/routing/app_routes.dart';
import '../../../../../../core/units/styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../../../../core/widgets/text_form_field_widget.dart';
import 'login_conditinal_builder_bloc_builder.dart';


class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: cubit.emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (value == '')) {
                return 'enter email';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          AppTextFormField(
            isObscureText: cubit.isObscureText,
            suffixIcon: GestureDetector(
              onTap: (){
                cubit.actionPassword();
              },
                child: Icon(
                    cubit.isObscureText ? Icons.visibility_off : Icons
                        .visibility,color:AppColors.primaryBlueColor,
                )),
            controller: cubit.passwordController,
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || (value == '')) {
                return 'enter password';
              }
              return null;
            },
          ),
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: AppTextButton(
              onPressed: () {
                context.push(AppRoute.forgetPassword);
              },
              text: 'forget password?',
              textColor: Colors.grey,
              styles: Styles.textStyle16.copyWith(
                color: AppColors.primaryBlueColor
              ),
            ),
          ),
          const SizedBox(height: 16),
          const LoginConditionalBuilderBlocBuilder(),
        ],
      ),
    );
  }
}
