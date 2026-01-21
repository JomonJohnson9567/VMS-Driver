part of 'otp_verification_bloc.dart';

abstract class OtpVerificationEvent extends Equatable {
  const OtpVerificationEvent();

  @override
  List<Object> get props => [];
}

class OtpCodeChanged extends OtpVerificationEvent {
  final int index;
  final String code;
  const OtpCodeChanged({required this.index, required this.code});

  @override
  List<Object> get props => [index, code];
}

class OtpTimerStarted extends OtpVerificationEvent {}

class _OtpTimerTicked extends OtpVerificationEvent {
  final int duration;
  const _OtpTimerTicked(this.duration);
  @override
  List<Object> get props => [duration];
}

class OtpResendRequested extends OtpVerificationEvent {}

class OtpVerifyRequested extends OtpVerificationEvent {}
