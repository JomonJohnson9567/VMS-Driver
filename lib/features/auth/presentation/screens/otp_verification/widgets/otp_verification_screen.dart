import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/core/widgets/custom_error_snackbar.dart';
import 'package:vms_driver/core/widgets/success_dialog.dart';
import '../bloc/otp_verification_bloc.dart';
import '../screens/otp_verification_page.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

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
                    AppRoutes.homepage,
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
        child: const OtpVerificationContents(),
      ),
    );
  }
}
