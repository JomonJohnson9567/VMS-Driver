import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';

class LogInHeader extends StatelessWidget {
  const LogInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back, color: AppColors.black),
      onPressed: () {
        Navigator.pop(context);
      },

      constraints: const BoxConstraints(),
    );
  }
}
