import 'package:flutter/material.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/onboard/widgets/outline_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      text: 'Sign in',
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.signIn);
      },
    );
  }
}
