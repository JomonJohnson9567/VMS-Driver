
import 'package:flutter/material.dart';
import 'package:vms_driver/core/constants/app_assets.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.35,
      child: Image.asset(
        OnboardAssets.welcome,
        fit: BoxFit.contain,
      ),
    );
  }
}