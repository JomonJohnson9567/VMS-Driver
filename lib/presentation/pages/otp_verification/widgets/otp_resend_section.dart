import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/colors/colors.dart';
import '../bloc/otp_verification_bloc.dart';

class OtpResendSection extends StatelessWidget {
  const OtpResendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpVerificationBloc, OtpVerificationState>(
      builder: (context, state) {
        return Column(
          children: [
            Text(
              state.timerString,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF00695C),
              ),
            ),
            SizedBox(height: 15.h),
            GestureDetector(
              onTap: !state.isTimerRunning
                  ? () {
                      context.read<OtpVerificationBloc>().add(
                        OtpResendRequested(),
                      );
                    }
                  : null,
              child: RichText(
                text: TextSpan(
                  text: 'Didn’t receive code? ',
                  style: TextStyle(fontSize: 14.sp, color: AppColors.darkGrey),
                  children: [
                    TextSpan(
                      text: 'Resend again',
                      style: TextStyle(
                        fontSize: 14.sp,
                        // fontWeight: FontWeight.bold,
                        color: !state.isTimerRunning
                            ? AppColors.primaryOrange
                            : AppColors.darkGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
