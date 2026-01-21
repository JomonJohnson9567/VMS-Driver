// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class OnboardNextButton extends StatelessWidget {
  const OnboardNextButton({
    super.key,
    required this.onPressed,
    this.icon,
    this.text,
    this.progress = 0.7,
  });

  final VoidCallback onPressed;
  final IconData? icon;
  final String? text;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74,
      height: 74,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 74,
            height: 74,
            child: CircularProgressIndicator(
              value: 1,
              strokeWidth: 6,
              valueColor: AlwaysStoppedAnimation(
                AppColors.primaryOrange.withOpacity(0.25),
              ),
            ),
          ),

          SizedBox(
            width: 74,
            height: 74,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 6,
              strokeCap: StrokeCap.round,
              valueColor: const AlwaysStoppedAnimation(AppColors.primaryOrange),
              backgroundColor: Colors.transparent,
            ),
          ),

          Material(
            color: AppColors.primaryOrange,
            shape: const CircleBorder(),
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: onPressed,
              child: SizedBox(
                width: 56,
                height: 56,
                child: Center(child: _buildContent()),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    if (icon != null) {
      return Icon(icon, color: Colors.white, size: 22);
    }

    if (text != null) {
      return Text(
        text!,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      );
    }

    return const SizedBox.shrink(); // nothing
  }
}
