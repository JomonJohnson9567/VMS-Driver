import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';

class LogInFooter extends StatelessWidget {
  const LogInFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(color: AppColors.backgroundGrey, fontSize: 12),
          children: [
            const TextSpan(text: "By logging in, you agree to the "),
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
