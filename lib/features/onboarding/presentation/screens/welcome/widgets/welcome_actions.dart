import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/core/widgets/primary_button.dart';

class WelcomeActions extends StatelessWidget {
  const WelcomeActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24.w, 0, 24.w, 24.h),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              text: AppTexts.loginNow,
              isOutlined: true,
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.signIn);
              },
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: PrimaryButton(
              text: AppTexts.register,
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.signUp);
              },
            ),
          ),
        ],
      ),
    );
  }
}
