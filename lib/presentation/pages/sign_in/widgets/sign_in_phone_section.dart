import 'package:flutter/material.dart';
import 'package:vms_driver/core/colors/colors.dart';
import '../../../widgets/phone_number_field.dart';

class SignInPhoneSection extends StatelessWidget {
  const SignInPhoneSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Mobile number",
          style: TextStyle(fontSize: 16, color: AppColors.black),
        ),
        const SizedBox(height: 8),
        const PhoneNumberField(hintText: "Your mobile number"),
      ],
    );
  }
}
