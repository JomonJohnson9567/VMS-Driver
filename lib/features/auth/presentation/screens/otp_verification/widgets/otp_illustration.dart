import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/onboard_assets.dart';
 
class OtpIllustration extends StatelessWidget {
  const OtpIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 20.h),
      child: Image.asset(OnboardAssets.otp, height: 250.h, fit: BoxFit.contain),
    );
  }
}
