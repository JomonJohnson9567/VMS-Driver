import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const OutlineButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.primaryOrange),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, color: AppColors.primaryOrange),
        ),
      ),
    );
  }
}
