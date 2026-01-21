import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vms_driver/core/routes/app_routes.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState()) {
    _startTimer();
  }

  void _startTimer() async {
    await Future.delayed(const Duration(seconds: 3));
    final prefs = await SharedPreferences.getInstance();
    final bool isOnboardCompleted =
        prefs.getBool('isOnboardCompleted') ?? false;

    if (isOnboardCompleted) {
      emit(const SplashState(targetRoute: AppRoutes.welcome));
    } else {
      emit(const SplashState(targetRoute: AppRoutes.onboard));
    }
  }
}
