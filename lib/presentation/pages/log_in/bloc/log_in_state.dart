import 'package:equatable/equatable.dart';

class LogInState extends Equatable {
  final String name;
  final String phoneNumber;
  final String? nameError;
  final String? phoneError;
  final bool isSubmitting;
  final bool isSuccess;

  const LogInState({
    this.name = '',
    this.phoneNumber = '',
    this.nameError,
    this.phoneError,
    this.isSubmitting = false,
    this.isSuccess = false,
  });

  LogInState copyWith({
    String? name,
    String? phoneNumber,
    String? nameError,
    String? phoneError,
    bool? isSubmitting,
    bool? isSuccess,
  }) {
    return LogInState(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      nameError: nameError,
      phoneError: phoneError,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      isSuccess: isSuccess ?? this.isSuccess,
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
  ];
}
