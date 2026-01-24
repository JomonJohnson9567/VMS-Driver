import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/features/auth/presentation/screens/signup/cubit/sign_in_cubit.dart';
import 'package:vms_driver/features/auth/presentation/screens/signup/cubit/sign_in_state.dart';
import 'package:vms_driver/core/widgets/custom_text_field.dart';

class SignUpNameSection extends StatelessWidget {
  const SignUpNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignInState>(
      buildWhen: (previous, current) => previous.nameError != current.nameError,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.namefield,
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8.h),
            CustomTextField(
              hintText: "Enter your name",
              errorText: state.nameError,
              onChanged: (value) =>
                  context.read<SignUpCubit>().nameChanged(value),
            ),
          ],
        );
      },
    );
  }
}
