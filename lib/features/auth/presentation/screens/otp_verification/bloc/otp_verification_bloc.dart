import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vms_driver/core/utils/validators.dart';
 
part 'otp_verification_event.dart';
part 'otp_verification_state.dart';

class OtpVerificationBloc
    extends Bloc<OtpVerificationEvent, OtpVerificationState> {
  StreamSubscription<int>? _tickerSubscription;
  final int _initialTimerDuration = 30;

  OtpVerificationBloc() : super(const OtpVerificationState()) {
    on<OtpCodeChanged>(_onCodeChanged);
    on<OtpTimerStarted>(_onTimerStarted);
    on<_OtpTimerTicked>(_onTimerTicked);
    on<OtpResendRequested>(_onResendRequested);
    on<OtpVerifyRequested>(_onVerifyRequested);

    // Auto start timer on initialization if usage requires
    add(OtpTimerStarted());
  }

  void _onCodeChanged(
    OtpCodeChanged event,
    Emitter<OtpVerificationState> emit,
  ) {
    if (event.code.length > 1) {
      // Handle paste logic if needed, currently blocking multiple chars
      return;
    }
    List<String> newOtp = List.from(state.otp);
    newOtp[event.index] = event.code;
    emit(
      state.copyWith(
        otp: newOtp,
        status: OtpStatus.initial,
        errorMessage: null,
      ),
    );
  }

  void _onTimerStarted(
    OtpTimerStarted event,
    Emitter<OtpVerificationState> emit,
  ) {
    emit(state.copyWith(timer: _initialTimerDuration, isTimerRunning: true));
    _tickerSubscription?.cancel();
    _tickerSubscription =
        Stream.periodic(
              const Duration(seconds: 1),
              (x) => _initialTimerDuration - 1 - x,
            )
            .take(_initialTimerDuration)
            .listen((duration) => add(_OtpTimerTicked(duration)));
  }

  void _onTimerTicked(
    _OtpTimerTicked event,
    Emitter<OtpVerificationState> emit,
  ) {
    emit(
      state.copyWith(timer: event.duration, isTimerRunning: event.duration > 0),
    );
  }

  void _onResendRequested(
    OtpResendRequested event,
    Emitter<OtpVerificationState> emit,
  ) {
    add(OtpTimerStarted());
  }

  Future<void> _onVerifyRequested(
    OtpVerifyRequested event,
    Emitter<OtpVerificationState> emit,
  ) async {
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

    emit(state.copyWith(status: OtpStatus.loading));
    try {
      await Future.delayed(const Duration(seconds: 2)); // Mock API

      // If we got here validation passed so validationError is null,
      // but we still check mock logic
      if (state.otpString.isNotEmpty && state.otpString == "12345") {
        emit(state.copyWith(status: OtpStatus.success));
      } else {
        // This block might be unreachable if Validator checks for empty, but keeping safe fallback
        emit(
          state.copyWith(
            status: OtpStatus.failure,
            errorMessage: "Invalid OTP",
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(status: OtpStatus.failure, errorMessage: e.toString()),
      );
    }
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }
}
