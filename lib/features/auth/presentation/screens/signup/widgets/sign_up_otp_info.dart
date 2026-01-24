import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class SignInOtpInfo extends StatelessWidget {
  const SignInOtpInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            "You will rec 5-digit OTP",
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ),
      ],
    );
  }
}
