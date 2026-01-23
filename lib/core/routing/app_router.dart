import 'package:flutter/material.dart';
import 'package:vms_driver/features/auth/presentation/screens/signup/screens/sign_up_page.dart';
import '../../features/onboarding/presentation/screens/splash/widgets/splash_page.dart';
import '../../features/onboarding/presentation/screens/onboard/screens/on_board.dart';
import '../../features/onboarding/presentation/screens/welcome/screens/welcome.dart';
import '../../features/auth/presentation/screens/sign_in/screens/sign_in_page.dart';
import '../../features/auth/presentation/screens/otp_verification/widgets/otp_verification_screen.dart';
import '../../features/home/presentation/home_page.dart';
import 'app_routes.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case AppRoutes.onboard:
        return MaterialPageRoute(builder: (_) => const OnBoardScreen());
      case AppRoutes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case AppRoutes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case AppRoutes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case AppRoutes.otp:
        return MaterialPageRoute(builder: (_) => const OtpVerificationScreen());
      case AppRoutes.homepage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
