import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.enterOtp,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryPurple,
          ),
        ),
        SizedBox(height: 10.h),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            text: AppTexts.otpsubTitle,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14.sp,
              color: AppColors.black,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: '+91 000 000 0000',
                style: TextStyle(
                  fontSize: 14.sp,

                  color: AppColors.black,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
