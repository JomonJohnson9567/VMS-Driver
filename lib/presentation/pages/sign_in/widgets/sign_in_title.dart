import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';

class SignInTitle extends StatelessWidget {
  const SignInTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Sign up",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
      ),
    );
  }
}
