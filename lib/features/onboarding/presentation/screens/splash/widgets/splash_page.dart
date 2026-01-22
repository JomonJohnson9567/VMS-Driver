import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/splash_cubit.dart';
import '../screens/splash.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state.targetRoute != null) {
            Navigator.pushReplacementNamed(context, state.targetRoute!);
          }
        },
        child: const SplashView(),
      ),
    );
  }
}
