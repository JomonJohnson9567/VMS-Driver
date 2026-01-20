import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: AppColors.primaryOrange),
            child: Center(
              child: Text(
                'Logo',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.textPurple,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
