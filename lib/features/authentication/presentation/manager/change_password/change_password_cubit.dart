

import 'package:comamarce/features/authentication/data/models/change_new_password/change_new_password_request_body.dart';
import 'package:comamarce/features/authentication/data/repos/change_password_repo.dart';
import 'package:comamarce/features/authentication/presentation/manager/change_password/change_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit(this._changePasswordRepo) : super(const ChangePasswordState.initial());

  final ChangePasswordRepo _changePasswordRepo;
  final formKey = GlobalKey<FormState>();


  bool isLoading = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void changePassword(ChangeNewPasswordRequestBody changePassword) async {
    isLoading = true;
    emit(const ChangePasswordState.loading());
    var response = await _changePasswordRepo.changePassword(changePassword);
    response.when(success: (changePasswordResponse) async{
      isLoading = false;
      emit(ChangePasswordState.success(changePasswordResponse));
    }, failure: (error) {
      isLoading = false;
      emit(ChangePasswordState.error(error: error.failure.errors!.msg!));
    });
  }

  void changePasswordValidation() {
    if (formKey.currentState!.validate()) {
     changePassword(
        ChangeNewPasswordRequestBody(
         email : emailController.text,
          newPassword: passwordController.text,
        ),
      );
    }
  }
}
