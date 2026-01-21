part of 'otp_verification_bloc.dart';

enum OtpStatus { initial, loading, success, failure, validationFail }

class OtpVerificationState extends Equatable {
  final List<String> otp;
  final int timer;
  final bool isTimerRunning;
  final OtpStatus status;
  final String? errorMessage;

  const OtpVerificationState({
    this.otp = const ['', '', '', '', ''],
    this.timer = 59,
    this.isTimerRunning = false,
    this.status = OtpStatus.initial,
    this.errorMessage,
  });

  bool get isOtpComplete => otp.every((digit) => digit.isNotEmpty);
  String get otpString => otp.join();

  String get timerString {
    final minutes = (timer / 60).floor().toString().padLeft(2, '0');
    final seconds = (timer % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  OtpVerificationState copyWith({
    List<String>? otp,
    int? timer,
    bool? isTimerRunning,
    OtpStatus? status,
    String? errorMessage,
  }) {
    return OtpVerificationState(
      otp: otp ?? this.otp,
      timer: timer ?? this.timer,
      isTimerRunning: isTimerRunning ?? this.isTimerRunning,
      status: status ?? this.status,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [otp, timer, isTimerRunning, status, errorMessage];
}
