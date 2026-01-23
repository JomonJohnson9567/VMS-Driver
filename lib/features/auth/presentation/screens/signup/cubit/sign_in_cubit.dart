import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/utils/validators.dart';
import 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(const SignInState());

  void nameChanged(String value) {
    emit(state.copyWith(name: value, nameError: Validators.name(value)));
  }

  void phoneChanged(String value) {
    emit(
      state.copyWith(phoneNumber: value, phoneError: Validators.phone(value)),
    );
  }

  void toggleAgreement() {
    emit(state.copyWith(isAgreed: !state.isAgreed));
  }

  void submit() {
    final nameError = Validators.name(state.name);
    final phoneError = Validators.phone(state.phoneNumber);

    if (nameError == null && phoneError == null && state.isAgreed) {
      emit(state.copyWith(isSubmitting: true));

      Future.delayed(const Duration(seconds: 1), () {
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      });
    } else {
      emit(state.copyWith(nameError: nameError, phoneError: phoneError));
      // Optionally handle agreement error if needed, but usually the button is just disabled or shows a toast
    }
  }
}
