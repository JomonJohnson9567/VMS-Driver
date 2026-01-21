import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';

class LogInOtpInfo extends StatelessWidget {
  const LogInOtpInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons
              .info, // Using info icon, closely looks like the orange 'i' circle
          color: AppColors.primaryOrange,
          size: 20,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            "We will send you a 5-digit OTP",
            style: TextStyle(color: Colors.grey[600], fontSize: 14),
          ),
        ),
      ],
    );
  }
}
