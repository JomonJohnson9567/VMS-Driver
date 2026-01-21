import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

import 'bloc/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          // Navigate based on targetRoute from state
          if (state.targetRoute != null) {
            Navigator.pushReplacementNamed(context, state.targetRoute!);
          }
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
