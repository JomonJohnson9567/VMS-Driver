import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/features/auth/presentation/screens/otp_verification/widgets/otp_illustration.dart';
import 'package:vms_driver/features/auth/presentation/screens/otp_verification/widgets/verify_button.dart';
import '../widgets/otp_header.dart';
import '../widgets/otp_input_section.dart';
import '../widgets/otp_resend_section.dart';

class OtpVerificationContents extends StatelessWidget {
  const OtpVerificationContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OtpIllustration(),
                SizedBox(height: 10.h),
                const OtpHeader(),
                const OtpInputSection(),
                const OtpResendSection(),
                SizedBox(height: 40.h),
                VerifyButton(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
