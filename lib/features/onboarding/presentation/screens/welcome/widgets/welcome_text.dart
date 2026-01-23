
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
                fontFamily: 'Poppins',
                height: 1.3,
              ),
              children: [
                TextSpan(text: AppTexts.welcomeTitle),
                TextSpan(
                  text: AppTexts.welcomeSubtitle,
                  style: TextStyle(color: AppColors.primaryPurple),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            AppTexts.welcomeDescription,
            style: TextStyle(
              fontSize: 15.sp,
              color: AppColors.textGrey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
