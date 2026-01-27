// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final VoidCallback onTap;
  final bool isOutlined;
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    this.text,
    required this.onTap,
    this.isOutlined = false,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.isLoading = false,
  }) : assert(
         text != null || icon != null,

         'Either text or icon must be provided',
       );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: isLoading ? null : onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: isOutlined
              ? AppColors.white
              : AppColors.primaryPurple,
          foregroundColor: isOutlined ? AppColors.textGrey : AppColors.white,
          disabledBackgroundColor: isOutlined
              ? AppColors.white
              : AppColors.primaryPurple.withOpacity(0.5),
          side: isOutlined
              ? BorderSide(color: AppColors.grey.withOpacity(0.5))
              : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          elevation: 0,
        ),
        child: isLoading
            ? SizedBox(
                height: 20.h,
                width: 20.h,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: isOutlined ? AppColors.primaryPurple : AppColors.white,
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    Icon(
                      icon,
                      size: iconSize ?? 20.sp,
                      color:
                          iconColor ??
                          (isOutlined ? AppColors.textGrey : AppColors.white),
                    ),
                    if (text != null) SizedBox(width: 8.w),
                  ],
                  if (text != null)
                    Flexible(
                      child: Text(
                        text!,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        softWrap: false,
                      ),
                    ),
                ],
              ),
      ),
    );
  }
}
