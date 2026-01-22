import 'package:flutter/material.dart';
 
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/welcome_screen_content.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: WelcomeScreenContents(size: size),
      ),
    );
  }
}










