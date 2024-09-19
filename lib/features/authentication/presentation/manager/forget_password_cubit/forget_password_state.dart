
import 'package:freezed_annotation/freezed_annotation.dart';
part 'forget_password_state.freezed.dart';
@freezed
class ForgetPasswordState<T> with _$ForgetPasswordState<T>{

  const factory ForgetPasswordState.initial() = _Initial;

  const factory ForgetPasswordState.forgetPasswordLoading() = ForgetPasswordLoading;

  const factory ForgetPasswordState.forgetPasswordSuccess(T data) =ForgetPasswordSuccess<T>;

  const factory ForgetPasswordState.forgetPasswordError({required String error}) = ForgetPasswordError;
}