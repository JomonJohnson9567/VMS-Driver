import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import '../cubit/otp_verification_cubit.dart';
import '../cubit/otp_verification_state.dart';

class OtpResendSection extends StatelessWidget {
  const OtpResendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpVerificationCubit, OtpVerificationState>(
      builder: (context, state) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                context.read<OtpVerificationCubit>().resendRequested();
              },
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: RichText(
                  text: TextSpan(
                    text: 'Didn’t receive code? ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.darkGrey,
                    ),
                    children: [
                      TextSpan(
                        text: 'Resend again',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.primaryPurple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
