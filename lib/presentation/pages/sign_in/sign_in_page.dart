import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';
import 'widgets/sign_in_header.dart';
import 'widgets/sign_in_illustration.dart';
import 'widgets/sign_in_title.dart';
import 'widgets/sign_in_name_section.dart';
import 'widgets/sign_in_phone_section.dart';
import 'widgets/sign_in_otp_info.dart';
import 'widgets/sign_in_button.dart';
import 'widgets/sign_in_login_link.dart';
import 'widgets/sign_in_footer.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SignInHeader(),
                const SizedBox(height: 24),

                const SignInIllustration(),
                const SizedBox(height: 32),

                const SignInTitle(),
                const SizedBox(height: 32),

                const SignInNameSection(),
                const SizedBox(height: 20),

                const SignInPhoneSection(),
                const SizedBox(height: 12),

                const SignInOtpInfo(),
                const SizedBox(height: 32),

                SignInButton(onPressed: () {}),
                const SizedBox(height: 24),

                SignInLoginLink(onTap: () {}),
                const SizedBox(height: 32),

                const SignInFooter(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
