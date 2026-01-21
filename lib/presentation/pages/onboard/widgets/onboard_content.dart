import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/colors/colors.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  final String imagePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 16.h),
          SizedBox(
            height: 300.h,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          SizedBox(height: 28.h),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 26.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.black.withValues(alpha: 0.45),
              fontSize: 14.sp,
              height: 1.5,
            ),
          ),
          SizedBox(height: 96.h),
        ],
      ),
    );
  }
}
