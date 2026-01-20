import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';

class SignInLoginLink extends StatelessWidget {
  const SignInLoginLink({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account? ",
          style: TextStyle(color: AppColors.black, fontSize: 16),
        ),
        GestureDetector(
          onTap: onTap,
          child: const Text(
            "Log in",
            style: TextStyle(
              color: AppColors.primaryOrange,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
