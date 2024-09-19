// import 'package:bloc/bloc.dart';
// import 'package:comamarce/features/authentication/data/models/login_model/Login_model.dart';
// import 'package:comamarce/features/authentication/data/repos/auth_repos.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:meta/meta.dart';
//
// part 'login_state.dart';
//
// class OtpCubit extends Cubit<OtpState> {
//   OtpCubit(this.authRepos) : super(OtpInitial());
//   final AuthRepos authRepos;
//   final emailController =TextEditingController();
//   bool isLoading=false;
//   Future<void> verify(String otp)async{
//     isLoading=true;
//     emit(OtpLoading());
//     var result= await authRepos.verifyAccount(
//         email: emailController.text,
//         otp: otp,
//     );
//     result.fold((failure){
//       isLoading=false;
//       emit(OtpError(massError: failure.errMassage));
//     }, (token){
//       isLoading=false;
//       emit(OtpSuccess());
//     });
//   }
// }

import 'package:comamarce/core/units/dio_factory.dart';
import 'package:comamarce/core/units/shared/helper/constant.dart';
import 'package:comamarce/core/units/shared/helper/shared_pref_helper.dart';
import 'package:comamarce/features/authentication/data/models/login_model/login_request_body.dart';
import 'package:comamarce/features/authentication/data/repos/login_repo.dart';
import 'package:comamarce/features/authentication/presentation/manager/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final LoginRepo loginRepo;

  final formKey = GlobalKey<FormState>();

  bool isObscureText =true;

  bool isLoading = false;
  final TextEditingController emailController = TextEditingController(text: 'measserhussien35@gmail.com');
  final TextEditingController passwordController = TextEditingController(text: 'meso123');

  void login(LoginRequestBody user) async {
    isLoading = true;
    emit(const LoginState.loginLoading());
    var response = await loginRepo.loginUser(user);
    response.when(success: (loginResponse) async{
      await saveUserToken(loginResponse.token!);
      isLoading = false;
      emit(LoginState.loginSuccess(loginResponse));
    }, failure: (error) {
      isLoading = false;
      emit(LoginState.loginError(error: error.failure.message ?? 'hello'));
    });
  }

  void getToken(String token ) async {
    emit(const LoginState.loginLoading());
    token =await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    var response = await loginRepo.verifyToken(token);
    response.when(success: (loginResponse) async{
      await saveUserId(loginResponse.decoded!.id!);
      emit(LoginState.verifyTokenSuccess(loginResponse));
    }, failure: (error) {
      emit(LoginState.loginError(error: error.failure.message ?? 'hello'));
    });
  }


  void loginValidation() {
    if (formKey.currentState!.validate()) {
      login(
        LoginRequestBody(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
    }
  }
  Future<void> saveUserToken(String token) async{
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
  Future<void> saveUserId(String userId) async{
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userId, userId);
  }


  void actionPassword(){
    isObscureText = !isObscureText;
    emit( LoginState.successAction(s: isObscureText));
  }

}
