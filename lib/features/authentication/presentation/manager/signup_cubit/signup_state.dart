// part of 'login_cubit.dart';
//
// @immutable
// sealed class OtpState {}
//
// final class OtpInitial extends OtpState {}
// final class OtpSuccess extends OtpState {}
// final class OtpLoading extends OtpState {}
// final class OtpError extends OtpState {
//   final String massError;
//
//   OtpError({required this.massError});
// }
import 'package:comamarce/core/errors/error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_state.freezed.dart';
@freezed
class SignupState<T> with _$SignupState<T>{
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loginLoading() = SignupLoading;
  const factory SignupState.loginSuccess(T data) = SignupSuccess<T>;

  const factory SignupState.loginError({required String error}) = SignupError;
  const factory SignupState.successAction( bool isPassword) = SuccessAction;
  const factory SignupState.successAction2(bool isPassword) = SuccessAction2;
}