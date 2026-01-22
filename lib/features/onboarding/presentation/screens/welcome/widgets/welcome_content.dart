import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Have a better sharing experience',
      style: TextStyle(fontSize: 14, color: AppColors.darkGrey),
    );
  }
}
