import 'package:flutter/material.dart';
import 'package:vms_driver/presentation/widgets/onboard_assets.dart';
import '../../core/colors/colors.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;

  const PhoneNumberField({super.key, this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.grey),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Row(
            children: [
              Image.asset(OnboardAssets.flag, width: 24, height: 24),
              const SizedBox(width: 8),
              const Icon(Icons.keyboard_arrow_down, color: AppColors.black),
              const SizedBox(width: 8),
              Container(width: 1, height: 24, color: AppColors.grey),
              const SizedBox(width: 12),
              const Text(
                '+91',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: const TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 16,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
