

import 'package:comamarce/features/authentication/data/models/otp_code_model/otp_code_request_body.dart';
import 'package:comamarce/features/authentication/data/repos/otp_repo.dart';
import 'package:comamarce/features/authentication/presentation/manager/otp_cubit/otp_code_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpCodeCubit extends Cubit<OtpCodeState> {
  OtpCodeCubit(this._otpRepo) : super(const OtpCodeState.initial());

  final OtpRepo _otpRepo;
  final formKey = GlobalKey<FormState>();


  bool isLoading = false;
  String otp = '';
  void resetCode(OtpCodeRequestBody otpCodeRequestBody)async{
    emit(const OtpCodeState.otpLoading());
    isLoading = true;
    var response =await _otpRepo.otpCode(otpCodeRequestBody);
    response.when(success: (
        otpResponse){
      isLoading = false;
      emit(OtpCodeState.otpSuccess(otpResponse));
    },
        failure: (error){
          isLoading = false;
      emit(OtpCodeState.otpError(error: error.failure.errors!.msg!));
    });
  }

  void otpCodeValidation(String otp){
      resetCode(
        OtpCodeRequestBody(
            resetCode: otp
        )
      );
  }
}
