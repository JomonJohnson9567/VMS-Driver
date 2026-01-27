import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import '../cubit/otp_verification_cubit.dart';
import '../cubit/otp_verification_state.dart';
import 'otp_verification_page.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpVerificationCubit(),
      child: BlocListener<OtpVerificationCubit, OtpVerificationState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == OtpStatus.success) {
            Navigator.pushNamed(context, AppRoutes.termsAndcondition);
          }
        },
        child: const OtpVerificationContents(),
      ),
    );
  }
}
