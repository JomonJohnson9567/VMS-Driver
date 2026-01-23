import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_assets.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/welcome_actions.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/welcome/widgets/welcome_text.dart';

class WelcomeIllustration extends StatelessWidget {
  const WelcomeIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeText(),
          SizedBox(height: 24.h),
          Stack(
            children: [
              Image.asset(
                OnboardAssets.welcomepageimage,
                width: 6.sw,
                height: 0.6.sh,
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
              ),
              const WelcomeActions(),
            ],
          ),
        ],
      ),
    );
  }
}
