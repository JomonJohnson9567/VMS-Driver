import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/features/onboarding/presentation/cubit/onboard_cubit.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/onboard/widgets/onboard_content.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/onboard/widgets/onboard_next_button.dart';
import 'package:vms_driver/features/onboarding/presentation/screens/onboard/widgets/onboard_skip_button.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          children: [
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
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 8.h, right: 8.w),
                child: OnboardSkipButton(
                  onTap: () async {
                    await context.read<OnboardCubit>().completeOnboarding();
                    if (context.mounted) {
                      Navigator.pushReplacementNamed(
                        context,
                        AppRoutes.welcome,
                      );
                    }
                  },
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 44.h),
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
                      onPressed: () async {
                        if (state.pageIndex == 2) {
                          await context
                              .read<OnboardCubit>()
                              .completeOnboarding();
                          if (context.mounted) {
                            Navigator.pushReplacementNamed(
                              context,
                              AppRoutes.welcome,
                            );
                          }
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
