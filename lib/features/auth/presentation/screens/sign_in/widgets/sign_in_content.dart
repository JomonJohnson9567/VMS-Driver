
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/log_in_cubit.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/log_in_state.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_header.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_illustration.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_name_section.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_otp_info.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_phone_section.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_signin_link.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_title.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_inbutton.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_footer.dart';

class LogInContent extends StatelessWidget {
  const LogInContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogInCubit, LogInState>(
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
                  const LogInHeader(),
                  SizedBox(height: 24.h),
                  const LogInIllustration(),
                  SizedBox(height: 32.h),
                  const LogInTitle(),
                  SizedBox(height: 32.h),
                  const LogInNameSection(),
                  SizedBox(height: 20.h),
                  const LogInPhoneSection(),
                  SizedBox(height: 12.h),
                  const LogInOtpInfo(),
                  SizedBox(height: 32.h),
                  LogInButton(
                    onPressed: () {
                      context.read<LogInCubit>().submit();
                    },
                  ),
                  SizedBox(height: 24.h),
                  LogInSignInLink(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.signIn);
                    },
                  ),
                  SizedBox(height: 32.h),
                  const LogInFooter(),
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
