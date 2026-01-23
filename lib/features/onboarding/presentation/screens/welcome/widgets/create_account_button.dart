import 'package:flutter/material.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/core/widgets/primary_button.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: 'Create an account',
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.signUp);
      },
    );
  }
}
