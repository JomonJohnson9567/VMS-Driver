import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/colors/colors.dart';
import 'package:vms_driver/core/routes/app_routes.dart';
import 'bloc/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          // Navigate to onboard screen after 3 seconds
          Navigator.pushReplacementNamed(context, AppRoutes.onboard);
        },
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
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
        ),
      ),
    );
  }
}
