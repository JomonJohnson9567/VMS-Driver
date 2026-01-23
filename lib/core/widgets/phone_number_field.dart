import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theme/colors/colors.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? errorText;
  final Function(String)? onChanged;

  const PhoneNumberField({
    super.key,
    this.controller,
    required this.hintText,
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
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: errorText != null ? AppColors.red : AppColors.grey,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.phone,
            onChanged: onChanged,
            decoration: InputDecoration(
              focusColor: AppColors.red,
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: AppColors.darkGrey, fontSize: 16.sp),
              contentPadding: EdgeInsets.symmetric(vertical: 14.h),
            ),
          ),
        ),
        if (errorText != null)
          Padding(
            padding: EdgeInsets.only(top: 8.h, left: 16.w),
            child: Text(
              errorText!,
              style: TextStyle(color: AppColors.red, fontSize: 12.sp),
            ),
          ),
      ],
    );
  }
}
