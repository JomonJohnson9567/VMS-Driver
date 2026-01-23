import 'package:flutter/material.dart';
import 'package:vms_driver/core/constants/app_assets.dart';

class SignInIllustration extends StatelessWidget {
  const SignInIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        OnboardAssets.atAnytime, // Using this as placeholder
        height: 200,
        fit: BoxFit.contain,
      ),
    );
  }
}
