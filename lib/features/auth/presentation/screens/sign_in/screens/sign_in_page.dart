import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/log_in_cubit.dart';
import '../widgets/sign_in_content.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogInCubit(),
      child: const LogInContent(),
    );
  }
}
  