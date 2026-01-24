import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class SignInOtpInfo extends StatelessWidget {
  const SignInOtpInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          AppTexts.otpInfo,
          style: TextStyle(color: AppColors.textGrey, fontSize: 14.sp),
        ),
      ),
    );
  }
}
