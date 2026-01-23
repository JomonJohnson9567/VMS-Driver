import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_assets.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Image.asset(
          OnboardAssets.applogoname,
          height: 20.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
