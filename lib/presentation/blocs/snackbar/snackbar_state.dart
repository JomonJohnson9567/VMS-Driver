part of 'snackbar_bloc.dart';

enum SnackbarStatus { hidden, showing, hiding }

class SnackbarState extends Equatable {
  final SnackbarStatus status;
  final String title;
  final String message;

  const SnackbarState({
    this.status = SnackbarStatus.hidden,
    this.title = '',
    this.message = '',
  });

  bool get isVisible => status == SnackbarStatus.showing;

  SnackbarState copyWith({
    SnackbarStatus? status,
    String? title,
    String? message,
  }) {
    return SnackbarState(
      status: status ?? this.status,
      title: title ?? this.title,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [status, title, message];
}
