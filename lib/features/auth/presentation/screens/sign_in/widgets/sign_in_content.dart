import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/sign_in_cubit.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/sign_in_state.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_header.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_illustration.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_name_section.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_otp_info.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_phone_section.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_signin_link.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_title.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_inbutton.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_footer.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state.isSuccess) {
          Navigator.pushNamed(context, AppRoutes.otp);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SignInHeader(),
                  SizedBox(height: 24.h),
                  const SignInIllustration(),
                  SizedBox(height: 32.h),
                  const SignInTitle(),
                  SizedBox(height: 32.h),
                  const SignInNameSection(),
                  SizedBox(height: 20.h),
                  const SignInPhoneSection(),
                  SizedBox(height: 12.h),
                  const SignInOtpInfo(),
                  SizedBox(height: 32.h),
                  SignInButton(
                    onPressed: () {
                      context.read<SignInCubit>().submit();
                    },
                  ),
                  SizedBox(height: 24.h),
                  SignInSignUpLink(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.signUp);
                    },
                  ),
                  SizedBox(height: 32.h),
                  const SignInFooter(),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
