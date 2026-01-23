import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/widgets/primary_button.dart';

class SignUpActions extends StatelessWidget {
  const SignUpActions({
    super.key,
    required this.onLoginPressed,
    required this.onNextPressed,
  });

  final VoidCallback onLoginPressed;
  final VoidCallback onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: PrimaryButton(
            text: "Login",
            onTap: onLoginPressed,
            isOutlined: true,
          ),
        ),
        SizedBox(width: 40.w),
        Expanded(
          flex: 6,
          child: PrimaryButton(icon: Icons.arrow_forward, onTap: onNextPressed),
        ),
      ],
    );
  }
}
