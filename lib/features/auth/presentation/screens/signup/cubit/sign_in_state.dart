import 'package:equatable/equatable.dart';

class SignInState extends Equatable {
  final String name;
  final String phoneNumber;
  final String? nameError;
  final String? phoneError;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isAgreed;

  const SignInState({
    this.name = '',
    this.phoneNumber = '',
    this.nameError,
    this.phoneError,
    this.isSubmitting = false,
    this.isSuccess = false,
    this.isAgreed = false,
  });

  SignInState copyWith({
    String? name,
    String? phoneNumber,
    String? nameError,
    String? phoneError,
    bool? isSubmitting,
    bool? isSuccess,
    bool? isAgreed,
  }) {
    return SignInState(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      nameError: nameError,
      phoneError: phoneError,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
      isAgreed: isAgreed ?? this.isAgreed,
    );
  }

  @override
  List<Object?> get props => [
    name,
    phoneNumber,
    nameError,
    phoneError,
    isSubmitting,
    isSuccess,
    isAgreed,
  ];
}
