import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/di/service_locator.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/onboard/widgets/onboarding_body.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ServiceLocator.onboardCubit,
      child: const OnboardingBody(),
    );
  }
}
