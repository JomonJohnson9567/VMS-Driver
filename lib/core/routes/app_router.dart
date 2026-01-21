import 'package:flutter/material.dart';
import '../../presentation/pages/splash_screen/splash.dart';
import '../../presentation/pages/onboard/on_board.dart';
import '../../presentation/pages/welcome/welcome.dart';
import '../../presentation/pages/sign_in/sign_in_page.dart';
import '../../presentation/pages/log_in/log_in_page.dart';
import '../../presentation/pages/otp_verification/otp_verification_page.dart';
import '../../presentation/pages/dashboard/dashboard.dart';
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
