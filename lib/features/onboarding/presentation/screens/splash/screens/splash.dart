import 'package:flutter/material.dart';
 
import 'package:vms_driver/features/onboarding/presentation/screens/splash/widgets/splash_contents.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SplashScreenContents(),
    );
  }
}
