import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';
import 'package:vms_driver/presentation/pages/welcome/welcome.dart';

class OnboardSkipButton extends StatelessWidget {
  const OnboardSkipButton({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:
          onTap ??
          () {
            Navigator.push(
              (context),
              MaterialPageRoute(builder: (context) => const WelcomeScreen()),
            );
          },
      style: TextButton.styleFrom(foregroundColor: AppColors.black),
      child: const Text('Skip'),
    );
  }
}
