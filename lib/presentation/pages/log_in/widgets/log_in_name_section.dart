import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/presentation/pages/log_in/bloc/log_in_cubit.dart';
import 'package:vms_driver/presentation/pages/log_in/bloc/log_in_state.dart';
import '../../../widgets/custom_text_field.dart';

class LogInNameSection extends StatelessWidget {
  const LogInNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInCubit, LogInState>(
      buildWhen: (previous, current) => previous.nameError != current.nameError,
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Name",
              style: TextStyle(fontSize: 16, color: AppColors.black),
            ),
            const SizedBox(height: 8),
            CustomTextField(
              hintText: "Enter your name",
              errorText: state.nameError,
              onChanged: (value) =>
                  context.read<LogInCubit>().nameChanged(value),
            ),
          ],
        );
      },
    );
  }
}
