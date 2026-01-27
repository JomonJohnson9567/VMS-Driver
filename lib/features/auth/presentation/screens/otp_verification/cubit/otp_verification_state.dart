import 'package:equatable/equatable.dart';

enum OtpStatus { initial, loading, success, failure, validationFail }

class OtpVerificationState extends Equatable {
  final List<String> otp;
  final OtpStatus status;
  final String? errorMessage;

  const OtpVerificationState({
    this.otp = const ['', '', '', ''],
    this.status = OtpStatus.initial,
    this.errorMessage,
  });

  bool get isOtpComplete => otp.every((digit) => digit.isNotEmpty);
  String get otpString => otp.join();

  OtpVerificationState copyWith({
    List<String>? otp,
    OtpStatus? status,
    String? errorMessage,
  }) {
    return OtpVerificationState(
      otp: otp ?? this.otp,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [otp, status, errorMessage];
}
