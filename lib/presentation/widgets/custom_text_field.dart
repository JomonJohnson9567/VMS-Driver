import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/colors/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final String? errorText;
  final Function(String)? onChanged;

  const CustomTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.errorText,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: errorText != null ? AppColors.red : AppColors.grey,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: AppColors.darkGrey, fontSize: 16.sp),
              contentPadding: EdgeInsets.symmetric(vertical: 14.h),
              // We handle error text outside the decoration to keep custom styling
              // or we can integrate it. For now, let's keep the error separate
              // or integrated if standard look is desired.
              // Given the design, standard errorText in InputDecoration
              // might shift the layout. Let's see.
              // Standard behavior is usually desired for 'clean architecture' validator feedback.
              // But the container has a border.
              // If we use errorText here, it will appear outside the border?
              // The original code wraps TextField in a Container with border.
              // If we want the error to appear below the container, we should handle it outside.
            ),
          ),
        ),
        if (errorText != null)
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 16.w),
            child: Text(
              errorText!,
              style: TextStyle(color: Colors.red, fontSize: 12.sp),
            ),
          ),
      ],
    );
  }
}
