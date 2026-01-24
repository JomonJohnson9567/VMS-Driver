import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_assets.dart';

class OtpIllustration extends StatelessWidget {
  const OtpIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        OnboardAssets.otpImage, // Using this as placeholder
        height: 250.h,
        fit: BoxFit.contain,
      ),
    );
  }
}
