import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/presentation/widgets/onboard_assets.dart';
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
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: errorText != null ? AppColors.red : AppColors.grey,
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            children: [
              Flexible(
                flex: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // const Icon(Icons.flag, color: AppColors.black),
                    Image.asset(OnboardAssets.flag, width: 24, height: 24),
                    SizedBox(width: 8.w),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.black,
                    ),
                    SizedBox(width: 8.w),
                    Container(width: 1.w, height: 24.h, color: AppColors.grey),
                    SizedBox(width: 12.w),
                    Text(
                      '+91',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.phone,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    focusColor: AppColors.red,
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                      color: AppColors.darkGrey,
                      fontSize: 16.sp,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 14.h),
                  ),
                ),
              ),
            ],
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
