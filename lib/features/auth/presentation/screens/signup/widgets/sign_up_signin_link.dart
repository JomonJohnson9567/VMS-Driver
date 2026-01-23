import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class SignUpSignInLink extends StatelessWidget {
  const SignUpSignInLink({super.key, required this.onTap});

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
            "Sign in",
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
