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
import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_password_state.freezed.dart';
@freezed
class ChangePasswordState<T> with _$ChangePasswordState<T>{
  const factory ChangePasswordState.initial() = _Initial;
  const factory ChangePasswordState.loading() = ChangePasswordLoading;
  const factory ChangePasswordState.success(T data) = ChangePasswordSuccess<T>;

  const factory ChangePasswordState.error({required String error}) = ChangePasswordError;
}