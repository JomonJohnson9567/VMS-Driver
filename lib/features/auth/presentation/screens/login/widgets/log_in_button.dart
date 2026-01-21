import 'package:flutter/material.dart';

import 'package:vms_driver/core/widgets/primary_button.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: "Log In",
      onPressed: () {
        // context.read<LogInCubit>().submit();
        onPressed();
      },
    );
  }
}
