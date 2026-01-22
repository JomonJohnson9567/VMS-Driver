// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_assets.dart';

class SuccessIllustration extends StatelessWidget {
  const SuccessIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 200.h,
      child: Image.asset(OnboardAssets.success, fit: BoxFit.contain),
    );
  }
}
