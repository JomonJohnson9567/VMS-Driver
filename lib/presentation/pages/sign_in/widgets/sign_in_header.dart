import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back, color: AppColors.black),
      onPressed: () {
        Navigator.pop(context);
      },
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
    );
  }
}
