import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/widgets/sign_in_contents.dart';
import 'package:vms_driver/features/auth/presentation/screens/sign_in/cubit/sign_in_cubit.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
          child: SignInContents(),
        ),
      ),
    );
  }
}
