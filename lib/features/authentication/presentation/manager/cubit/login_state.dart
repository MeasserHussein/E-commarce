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
import 'package:comamarce/features/authentication/data/models/verify_token/verify_token_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';
@freezed
class LoginState<T> with _$LoginState<T>{
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(T data) = LoginSuccess<T>;
  const factory LoginState.verifyTokenSuccess(VerifyTokenResponse data) = VerifyTokenSuccess<T>;

  const factory LoginState.loginError({required String error}) = LoginError;
  const factory LoginState.successAction({required bool s}) = SuccessAction;
}