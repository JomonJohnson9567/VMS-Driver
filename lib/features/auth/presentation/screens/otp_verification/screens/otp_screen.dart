import 'package:flutter/material.dart';
import 'package:vms_driver/features/auth/presentation/screens/otp_verification/widgets/otp_verification_page.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OtpVerificationContents());
  }
}
