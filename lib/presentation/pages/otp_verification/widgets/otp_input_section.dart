import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/colors/colors.dart';
import '../bloc/otp_verification_bloc.dart';

class OtpInputSection extends StatelessWidget {
  const OtpInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpVerificationBloc, OtpVerificationState>(
      builder: (context, state) {
        final isError =
            state.status == OtpStatus.validationFail &&
            state.errorMessage != null;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  5,
                  (index) => _buildOtpBox(context, index, isError),
                ),
              ),
              if (isError) ...[
                SizedBox(height: 10.h),
                Text(
                  state.errorMessage!,
                  style: TextStyle(
                    color: AppColors.red,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildOtpBox(BuildContext context, int index, bool isError) {
    return Container(
      width: 45.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: isError ? AppColors.red : AppColors.darkGrey),
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
            context.read<OtpVerificationBloc>().add(
              OtpCodeChanged(index: index, code: value),
            );
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
