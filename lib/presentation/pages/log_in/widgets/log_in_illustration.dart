import 'package:flutter/material.dart';
import '../../../widgets/onboard_assets.dart';

class LogInIllustration extends StatelessWidget {
  const LogInIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        OnboardAssets.atAnytime, // Using this as placeholder
        height: 200,
        fit: BoxFit.contain,
      ),
    );
  }
}
