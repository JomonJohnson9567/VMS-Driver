import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/utils/validators.dart';
 import 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(const LogInState());

  void nameChanged(String value) {
    emit(state.copyWith(name: value, nameError: Validators.name(value)));
  }

  void phoneChanged(String value) {
    emit(
      state.copyWith(phoneNumber: value, phoneError: Validators.phone(value)),
    );
  }

  void submit() {
    final nameError = Validators.name(state.name);
    final phoneError = Validators.phone(state.phoneNumber);

    if (nameError == null && phoneError == null) {
      emit(state.copyWith(isSubmitting: true));
      // Simulate API call
      Future.delayed(const Duration(seconds: 1), () {
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      });
    } else {
      emit(state.copyWith(nameError: nameError, phoneError: phoneError));
    }
  }
}
