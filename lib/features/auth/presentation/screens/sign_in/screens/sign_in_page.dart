import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/sign_in_cubit.dart';
import '../widgets/sign_in_content.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: const SignInContent(),
    );
  }
}
