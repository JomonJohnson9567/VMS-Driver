import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import '../cubit/otp_verification_cubit.dart';
import '../cubit/otp_verification_state.dart';

class OtpInputSection extends StatelessWidget {
  const OtpInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpVerificationCubit, OtpVerificationState>(
      buildWhen: (previous, current) =>
          previous.otp != current.otp ||
          previous.errorMessage != current.errorMessage,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 20.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) => _buildOtpBox(context, index),
                ),
              ),
              if (state.errorMessage != null) ...[
                SizedBox(height: 12.h),
                Text(
                  state.errorMessage!,
                  style: TextStyle(color: Colors.red, fontSize: 12.sp),
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildOtpBox(BuildContext context, int index) {
    return Container(
      width: 45.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.darkGrey),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            border: InputBorder.none,
            counterText: '',
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          onChanged: (value) {
            context.read<OtpVerificationCubit>().otpCodeChanged(value, index);
            if (value.isNotEmpty) {
              FocusScope.of(context).nextFocus();
            } else if (value.isEmpty && index > 0) {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }
}
