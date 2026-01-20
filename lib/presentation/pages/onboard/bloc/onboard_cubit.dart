import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(const OnboardState());

  final PageController pageController = PageController();

  void pageChanged(int index) {
    emit(OnboardState(pageIndex: index));
  }

  void nextPage() {
    if (state.pageIndex < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void skip() {
    pageController.jumpToPage(2);
  }
}
