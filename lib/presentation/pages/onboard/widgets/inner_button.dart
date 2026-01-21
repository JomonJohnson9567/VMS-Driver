import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class InnerButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const InnerButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      height: 56,
      child: Material(
        color: AppColors.primaryOrange,
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onPressed,
          child: Center(child: child),
        ),
      ),
    );
  }
}
