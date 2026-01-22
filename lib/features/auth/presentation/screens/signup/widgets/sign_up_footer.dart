import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(color: AppColors.backgroundGrey, fontSize: 12),
          children: [
            const TextSpan(text: "By signing up, you agree to the "),
            TextSpan(
              text: "Terms of service",
              style: TextStyle(color: AppColors.blue),
            ),
            const TextSpan(
              text: " and\n",
              style: TextStyle(color: AppColors.black),
            ),
            const TextSpan(
              text: "Privacy policy.",
              style: TextStyle(color: AppColors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
