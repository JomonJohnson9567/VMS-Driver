import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Phone verification',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        SizedBox(height: 10.h),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'Please enter the 5 digit code sent to\n',
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.lightGrey,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: '+91 000 000 0000',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryOrange,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
