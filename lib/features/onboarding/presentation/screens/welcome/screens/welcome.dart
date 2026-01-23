import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/welcome_header.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/welcome_illustration.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [WelcomeHeader(), WelcomeIllustration()],
          ),
        ),
      ),
    );
  }
}
