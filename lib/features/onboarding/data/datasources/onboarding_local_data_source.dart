import 'package:shared_preferences/shared_preferences.dart';

abstract class OnboardingLocalDataSource {
  Future<void> cacheOnboarding();
}

class OnboardingLocalDataSourceImpl implements OnboardingLocalDataSource {
  @override
  Future<void> cacheOnboarding() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('isOnboardCompleted', true);
  }
}
