import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class SignInTitle extends StatelessWidget {
  const SignInTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        AppTexts.signUpTitle,
        style: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryPurple,
        ),
      ),
    );
  }
}
