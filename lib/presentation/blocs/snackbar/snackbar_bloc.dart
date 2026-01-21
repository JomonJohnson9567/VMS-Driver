import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'snackbar_event.dart';
part 'snackbar_state.dart';

class SnackbarBloc extends Bloc<SnackbarEvent, SnackbarState> {
  Timer? _autoDismissTimer;

  SnackbarBloc() : super(const SnackbarState()) {
    on<ShowSnackbar>(_onShowSnackbar);
    on<HideSnackbar>(_onHideSnackbar);
    on<AnimationCompleted>(_onAnimationCompleted);
  }

  void _onShowSnackbar(ShowSnackbar event, Emitter<SnackbarState> emit) {
    // Cancel any existing auto-dismiss timer
    _autoDismissTimer?.cancel();

    emit(
      state.copyWith(
        status: SnackbarStatus.showing,
        title: event.title,
        message: event.message,
      ),
    );

    // Auto dismiss after 3 seconds
    _autoDismissTimer = Timer(const Duration(seconds: 3), () {
      add(HideSnackbar());
    });
  }

  void _onHideSnackbar(HideSnackbar event, Emitter<SnackbarState> emit) {
    _autoDismissTimer?.cancel();
    emit(state.copyWith(status: SnackbarStatus.hiding));
  }

  void _onAnimationCompleted(
    AnimationCompleted event,
    Emitter<SnackbarState> emit,
  ) {
    if (state.status == SnackbarStatus.hiding) {
      emit(const SnackbarState()); // Reset to hidden state
    }
  }

  @override
  Future<void> close() {
    _autoDismissTimer?.cancel();
    return super.close();
  }
}
