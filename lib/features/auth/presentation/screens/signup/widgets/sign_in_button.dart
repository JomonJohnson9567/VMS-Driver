import 'package:flutter/material.dart';
 
import 'package:vms_driver/core/widgets/primary_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: "Sign up",
      onPressed: () {
        // context.read<SignInCubit>().submit();
        onPressed();
      },
    );
  }
}
