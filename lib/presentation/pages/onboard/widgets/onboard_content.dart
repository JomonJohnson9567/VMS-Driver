import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  final String imagePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          SizedBox(
            height: 300,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
          const SizedBox(height: 28),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.black,
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.black.withValues(alpha: 0.45),
              fontSize: 14,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 96),
        ],
      ),
    );
  }
}
