import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/utils/validators.dart';
import 'otp_verification_state.dart';

class OtpVerificationCubit extends Cubit<OtpVerificationState> {
  OtpVerificationCubit() : super(const OtpVerificationState());

  void otpCodeChanged(String code, int index) {
    if (code.length > 1) return;

    List<String> newOtp = List.from(state.otp);
    newOtp[index] = code;

    emit(
      state.copyWith(
        otp: newOtp,
        status: OtpStatus.initial,
        errorMessage: null,
      ),
    );
  }

  Future<void> verifyRequested() async {
    final validationError = Validators.otp(state.otpString);

    if (validationError != null) {
      emit(
        state.copyWith(
          status: OtpStatus.validationFail,
          errorMessage: validationError,
        ),
      );
      return;
    }

    try {
      if (state.otpString == "1234") {
        emit(state.copyWith(status: OtpStatus.success));
      } else {
        emit(
          state.copyWith(
            status: OtpStatus.failure,
            errorMessage: 'Invalid OTP. Please try again.',
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: OtpStatus.failure,
          errorMessage: 'Something went wrong. Please try again.',
        ),
      );
    }
  }

  void resendRequested() {
    // Logic for resending OTP
    emit(state.copyWith(status: OtpStatus.initial, errorMessage: null));
  }
}
