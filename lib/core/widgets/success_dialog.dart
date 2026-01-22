import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/widgets/primary_button.dart';

import 'success_illustration.dart';
import '../../core/theme/colors/colors.dart';

class SuccessDialog extends StatelessWidget {
  final VoidCallback onGoPressed;

  const SuccessDialog({super.key, required this.onGoPressed});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      backgroundColor: AppColors.white,
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Icon(
                  Icons.close,
                  color: AppColors.textGrey,
                  size: 24.sp,
                ),
              ),
            ),
            SizedBox(height: 8.h),

            const SuccessIllustration(),
            SizedBox(height: 32.h),

            Text(
              "Congratulations",
              style: TextStyle(fontSize: 24.sp, color: AppColors.black),
            ),
            SizedBox(height: 12.h),

            Text(
              "Your account is ready to use. You will be redirected to the Home Page in a few seconds.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: AppColors.textGrey,
                height: 1.5,
              ),
            ),
            SizedBox(height: 32.h),

            PrimaryButton(text: "Go", onTap: onGoPressed),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}
