import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/core/widgets/primary_button.dart';
import 'bloc/otp_verification_bloc.dart';
import 'widgets/otp_header.dart';
import 'widgets/otp_illustration.dart';
import 'widgets/otp_input_section.dart';
import 'widgets/otp_resend_section.dart';
import 'package:vms_driver/core/widgets/success_dialog.dart';
import 'package:vms_driver/core/widgets/custom_error_snackbar.dart';

class OtpVerificationPage extends StatelessWidget {
  const OtpVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpVerificationBloc(),
      child: BlocListener<OtpVerificationBloc, OtpVerificationState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == OtpStatus.success) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => SuccessDialog(
                onGoPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.dashboard,
                    (route) => false,
                  );
                },
              ),
            );
          } else if (state.status == OtpStatus.failure) {
            showCustomErrorSnackBar(
              context,
              title: 'Invalid OTP',
              message: 'The OTP you entered is incorrect. Please try again.',
            );
          }
        },
        child: Scaffold(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const OtpIllustration(),
                    SizedBox(height: 10.h),
                    const OtpHeader(),
                    const OtpInputSection(),
                    const OtpResendSection(),
                    SizedBox(height: 40.h),
                    BlocBuilder<OtpVerificationBloc, OtpVerificationState>(
                      builder: (context, state) {
                        return PrimaryButton(
                          text: state.status == OtpStatus.loading
                              ? 'Verifying...'
                              : 'Verify',
                          onPressed: () {
                            if (state.status != OtpStatus.loading) {
                              context.read<OtpVerificationBloc>().add(
                                OtpVerifyRequested(),
                              );
                            }
                          },
                        );
                      },
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
