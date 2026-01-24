import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/features/auth/presentation/screens/signup/cubit/sign_in_cubit.dart';
import 'package:vms_driver/features/auth/presentation/screens/signup/cubit/sign_in_state.dart';

class SignUpTerms extends StatelessWidget {
  const SignUpTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignInState>(
      buildWhen: (previous, current) => previous.isAgreed != current.isAgreed,
      builder: (context, state) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 24.w,
              height: 24.h,
              child: Checkbox(
                value: state.isAgreed,
                onChanged: (value) {
                  context.read<SignUpCubit>().toggleAgreement();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                side: BorderSide(color: AppColors.grey, width: 2.w),
                activeColor: AppColors.primaryPurple,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.darkGrey,
                    height: 1.4,
                  ),
                  children: [
                    const TextSpan(text: "I agree to the "),
                    TextSpan(
                      text: "Terms of service",
                      style: TextStyle(
                        color: AppColors.primaryPurple,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const TextSpan(text: " and "),
                    TextSpan(
                      text: "Privacy policy.",
                      style: TextStyle(
                        color: AppColors.primaryPurple,
                        fontWeight: FontWeight.w500,
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
