import 'package:flutter/material.dart';
import '../../features/onboarding/presentation/screens/splash/splash.dart';
import '../../features/onboarding/presentation/screens/on_board.dart';
import '../../features/onboarding/presentation/screens/welcome/welcome.dart';
import '../../features/auth/presentation/screens/signup/sign_in_page.dart';
import '../../features/auth/presentation/screens/login/log_in_page.dart';
import '../../features/auth/presentation/screens/otp_verification/otp_verification_page.dart';
import '../../features/home/presentation/home_page.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.onboard:
        return MaterialPageRoute(builder: (_) => const OnBoardScreen());
      case AppRoutes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case AppRoutes.logIn:
        return MaterialPageRoute(builder: (_) => const LogInPage());
      case AppRoutes.otp:
        return MaterialPageRoute(builder: (_) => const OtpVerificationPage());
      case AppRoutes.dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
