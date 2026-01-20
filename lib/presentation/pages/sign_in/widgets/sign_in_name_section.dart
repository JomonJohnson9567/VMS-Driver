import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';
import '../../../widgets/custom_text_field.dart';

class SignInNameSection extends StatelessWidget {
  const SignInNameSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Name",
          style: TextStyle(fontSize: 16, color: AppColors.black),
        ),
        const SizedBox(height: 8),
        const CustomTextField(hintText: "Enter your name"),
      ],
    );
  }
}
