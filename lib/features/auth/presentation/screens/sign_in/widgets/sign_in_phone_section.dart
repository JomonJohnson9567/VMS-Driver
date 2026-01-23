import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/sign_in_cubit.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/sign_in_state.dart';
import 'package:vms_driver/core/widgets/phone_number_field.dart';

class SignInPhoneSection extends StatelessWidget {
  const SignInPhoneSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) =>
          previous.phoneError != current.phoneError,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Mobile number",
              style: TextStyle(fontSize: 16, color: AppColors.black),
            ),
            const SizedBox(height: 8),
            PhoneNumberField(
              hintText: "Your mobile number",
              errorText: state.phoneError,
              onChanged: (value) =>
                  context.read<SignInCubit>().phoneChanged(value),
            ),
          ],
        );
      },
    );
  }
}
