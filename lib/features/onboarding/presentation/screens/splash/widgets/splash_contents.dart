import 'package:flutter/material.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class SplashScreenContents extends StatelessWidget {
  const SplashScreenContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: AppColors.white),
      child: Center(
        child: Text(
          'Logo',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: AppColors.primaryPurple,
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
