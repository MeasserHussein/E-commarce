
import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_code_state.freezed.dart';
@freezed
class OtpCodeState<T> with _$OtpCodeState<T>{
  const factory  OtpCodeState.initial() =_Initial;

  const factory OtpCodeState.otpLoading() = OtpLoading;

  const factory OtpCodeState.otpSuccess(T data) =OtpSuccess<T>;

  const factory OtpCodeState.otpError({required String error}) = OtpError;
}