import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/presentation/pages/sign_in/bloc/sign_in_cubit.dart';
import '../../../widgets/primary_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: "Sign In",
      onPressed: () {
        context.read<SignInCubit>().submit();
      },
    );
  }
}
