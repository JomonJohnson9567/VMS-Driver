import 'package:flutter/material.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/welcome_image.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/welcome_title.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/welcome_content.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/create_account_button.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/log_in_button.dart';

class WelcomeScreenContents extends StatelessWidget {
  const WelcomeScreenContents({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          WelcomeImage(size: size),

          const SizedBox(height: 30),

          WelcomeTitle(),

          const SizedBox(height: 8),

          WelcomeContent(),
          Spacer(),
          const SizedBox(height: 24),

          CreateAccountButton(),

          const SizedBox(height: 14),

          LogInButton(),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
