

import 'package:comamarce/core/errors/error_handler.dart';
import 'package:comamarce/core/units/app_colors.dart';
import 'package:comamarce/features/authentication/data/models/signup_model/signup_request_body.dart';
import 'package:comamarce/features/authentication/data/repos/signup_repo.dart';
import 'package:comamarce/features/authentication/presentation/manager/signup_cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signupRepo) : super(const SignupState.initial());

  bool isLoading =false;
  final SignupRepo signupRepo;
  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  void signup(SignupRequestBody user) async {
    isLoading =true;
    emit(const SignupState.loginLoading());
    var response = await signupRepo.signup(user);
    response.when(success: (loginResponse) async{
      isLoading =false;
      emit(SignupState.loginSuccess(loginResponse));
    }, failure: (error) {
      isLoading =false;
      emit(SignupState.loginError(error: error.failure.errors!.msg!));
    });
  }

  void signupValidation() {
    if (formKey.currentState!.validate()) {
      signup(
        SignupRequestBody(
          name: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          confirmPassword: rePasswordController.text,
          phone: phoneController.text
        ),
      );
    }
  }


  bool isPassword=true;
  Color color =Colors.grey;
  void changePasswordVisibility()
  {
    isPassword=!isPassword;
    color=isPassword ? Colors.grey:AppColors.primaryBlueColor;
    emit(SignupState.successAction(isPassword));
  }

  Color color2 =Colors.grey;
  bool isPassword2=true;
  void changePasswordVisibility2()
  {
    isPassword2=!isPassword2;
    color2=isPassword2 ? Colors.grey:AppColors.primaryBlueColor;

    emit(SignupState.successAction2(isPassword2));
  }
}
