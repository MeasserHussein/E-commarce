
import 'package:comamarce/features/authentication/data/models/forget_password_model/forget_password_request.dart';
import 'package:comamarce/features/authentication/data/repos/forget_password_repo.dart';
import 'package:comamarce/features/authentication/presentation/manager/forget_password_cubit/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this._forgetPasswordRepo) : super(const ForgetPasswordState.initial());
  final ForgetPasswordRepo _forgetPasswordRepo;

  final formKey = GlobalKey<FormState>();


  bool isLoading = false;
  final TextEditingController emailController = TextEditingController();
  void forgetPassword(ForgetPasswordRequest forgetPassword) async{
    isLoading = true;
    emit(const ForgetPasswordState.forgetPasswordLoading());
    var response = await _forgetPasswordRepo.loginUser(forgetPassword);
    response.when(success: (forgetPassword){
      isLoading = false;
      emit(ForgetPasswordState.forgetPasswordSuccess(forgetPassword));
    }, failure: (error){
      isLoading = false;
      emit(ForgetPasswordState.forgetPasswordError(error: error.failure.errors!.msg!));
    });
  }

  void forgetPasswordValidation(){
    if(formKey.currentState!.validate()){
      forgetPassword(
        ForgetPasswordRequest(email: emailController.text)
      );
    }
  }
}
