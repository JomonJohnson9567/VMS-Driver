import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/presentation/pages/log_in/bloc/log_in_cubit.dart';
import 'package:vms_driver/presentation/pages/log_in/bloc/log_in_state.dart';
import '../../../widgets/phone_number_field.dart';

class LogInPhoneSection extends StatelessWidget {
  const LogInPhoneSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInCubit, LogInState>(
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
                  context.read<LogInCubit>().phoneChanged(value),
            ),
          ],
        );
      },
    );
  }
}
