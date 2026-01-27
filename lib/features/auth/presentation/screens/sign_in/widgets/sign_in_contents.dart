import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/core/widgets/primary_button.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/sign_in_cubit.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/sign_in_state.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_illustration.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_otp_info.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_phone_section.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_title.dart';
import 'package:vms_driver/core/routing/app_routes.dart';

class SignInContents extends StatelessWidget {
  const SignInContents({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listenWhen: (previous, current) =>
          previous.isSuccess != current.isSuccess && current.isSuccess,
      listener: (context, state) {
        if (state.isSuccess) {
          Navigator.pushNamed(
            context,
            AppRoutes.otp,
            arguments: state.phoneNumber,
          );
        }
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SignInIllustration(),
            SizedBox(height: 40.h),
            const SignInTitle(),
            SizedBox(height: 30.h),
            const SignInPhoneSection(),
            SizedBox(height: 8.h),
            const SignInOtpInfo(),
            SizedBox(height: 75.h),

            BlocBuilder<SignInCubit, SignInState>(
              builder: (context, state) {
                return PrimaryButton(
                  icon: Icons.arrow_forward,
                  isLoading: state.isSubmitting,
                  onTap: () {
                    context.read<SignInCubit>().submit();
                  },
                );
              },
            ),

            SizedBox(height: 100.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppTexts.newToBookit,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  AppTexts.registerNow,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryPurple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
