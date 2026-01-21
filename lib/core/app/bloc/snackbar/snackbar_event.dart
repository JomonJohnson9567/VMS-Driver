part of 'snackbar_bloc.dart';

abstract class SnackbarEvent extends Equatable {
  const SnackbarEvent();

  @override
  List<Object> get props => [];
}

class ShowSnackbar extends SnackbarEvent {
  final String title;
  final String message;

  const ShowSnackbar({required this.title, required this.message});

  @override
  List<Object> get props => [title, message];
}

class HideSnackbar extends SnackbarEvent {}

class AnimationCompleted extends SnackbarEvent {}
