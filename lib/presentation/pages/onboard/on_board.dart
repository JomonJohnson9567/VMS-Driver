import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/presentation/pages/onboard/bloc/onboard_cubit.dart';

import 'package:vms_driver/presentation/pages/onboard/widgets/onboard_content.dart';
import 'package:vms_driver/presentation/pages/onboard/widgets/onboard_next_button.dart';
import 'package:vms_driver/presentation/pages/onboard/widgets/onboard_skip_button.dart';
import 'package:vms_driver/presentation/pages/onboard/widgets/onboard_data.dart';
import 'package:vms_driver/core/routes/app_routes.dart';
import '../../../../core/colors/colors.dart';

class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardCubit(),
      child: const _OnBoardContent(),
    );
  }
}

class _OnBoardContent extends StatelessWidget {
  const _OnBoardContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: OnboardSkipButton(
                  onTap: () => context.read<OnboardCubit>().skip(),
                ),
              ),
            ),
            BlocBuilder<OnboardCubit, OnboardState>(
              builder: (context, state) {
                return PageView.builder(
                  controller: context.read<OnboardCubit>().pageController,
                  onPageChanged: (index) {
                    context.read<OnboardCubit>().pageChanged(index);
                  },
                  itemCount: onboardData.length,
                  itemBuilder: (context, index) => Center(
                    child: OnboardContent(
                      imagePath: onboardData[index]['image']!,
                      title: onboardData[index]['title']!,
                      description: onboardData[index]['description']!,
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 44),
                child: BlocBuilder<OnboardCubit, OnboardState>(
                  builder: (context, state) {
                    double progress = 0.33;
                    if (state.pageIndex == 0) progress = 0.35;
                    if (state.pageIndex == 1) progress = 0.70;
                    if (state.pageIndex == 2) progress = 1.0;

                    return OnboardNextButton(
                      progress: progress,
                      icon: state.pageIndex == 2 ? null : Icons.arrow_forward,
                      text: state.pageIndex == 2 ? "Go" : null,
                      onPressed: () {
                        if (state.pageIndex == 2) {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.welcome,
                          );
                        } else {
                          context.read<OnboardCubit>().nextPage();
                        }
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
