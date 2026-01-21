import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessIllustration extends StatelessWidget {
  const SuccessIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      height: 200.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background circle/blob effect
          Positioned(
            child: Container(
              width: 160.w,
              height: 160.w,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF8E1), // Light yellow bg
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Phone device
          Transform.rotate(
            angle: -0.1,
            child: Container(
              width: 90.w,
              height: 160.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(
                  color: const Color(0xFFFFCC00), // Yellow border
                  width: 4.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Text(
                          '*',
                          style: TextStyle(
                            color: const Color(0xFFFFCC00),
                            fontSize: 24.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  // Checkmark circle
                  Container(
                    width: 48.w,
                    height: 48.w,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFCC00), // Yellow fill
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.check, color: Colors.white, size: 32.sp),
                  ),
                ],
              ),
            ),
          ),

         
          Positioned(
            left: 30.w,
            top: 60.h,
            child: Icon(
              Icons.lock_outline,
              color: const Color(0xFFFFCC00),
              size: 24.sp,
            ),
          ),
          // Key
          Positioned(
            right: 30.w,
            bottom: 60.h,
            child: Icon(
              Icons.vpn_key_outlined,
              color: const Color(0xFFFFCC00),
              size: 24.sp,
            ),
          ),
          // Bubbles
          Positioned(
            left: 40.w,
            bottom: 40.h,
            child: Container(
              width: 8.w,
              height: 8.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFFFCC00)),
              ),
            ),
          ),
          Positioned(
            right: 50.w,
            top: 40.h,
            child: Container(
              width: 8.w,
              height: 8.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFFFCC00)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
