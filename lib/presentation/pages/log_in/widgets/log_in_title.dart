import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/colors/colors.dart';

class LogInTitle extends StatelessWidget {
  const LogInTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Log In",
        style: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          // fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
      ),
    );
  }
}
