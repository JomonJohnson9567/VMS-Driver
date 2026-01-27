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

  void submit() {
    final phoneError = Validators.phone(state.phoneNumber);

    if (phoneError == null) {
      emit(state.copyWith(isSubmitting: true));
      Future.delayed(const Duration(seconds: 0), () {
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      });
    } else {
      emit(state.copyWith(phoneError: phoneError));
    }
  }
}
