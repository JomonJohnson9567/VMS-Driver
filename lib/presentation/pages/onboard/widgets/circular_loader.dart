// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class CircularLoader extends StatelessWidget {
  final double progress;

  const CircularLoader({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: progress),
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
      builder: (context, value, _) {
        return SizedBox(
          width: 74,
          height: 74,
          child: CircularProgressIndicator(
            value: value,
            strokeWidth: 6,
            backgroundColor: AppColors.primaryOrange.withOpacity(0.25),
            valueColor: AlwaysStoppedAnimation(AppColors.primaryOrange),
          ),
        );
      },
    );
  }
}
