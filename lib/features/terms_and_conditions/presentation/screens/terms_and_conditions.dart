import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/routing/app_routes.dart';
import 'package:vms_driver/core/theme/colors/colors.dart';
import 'package:vms_driver/core/widgets/primary_button.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.agreement,
              style: TextStyle(fontSize: 20.sp, color: AppColors.darkGrey),
            ),
            Text(
              AppTexts.termsAndAcceptance,
              style: TextStyle(fontSize: 20.sp),
            ),
            SizedBox(height: 20.h),
            Divider(),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 24.w, bottom: 24.h),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: PrimaryButton(
                      text: AppTexts.decline,
                      isOutlined: true,
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.signIn);
                      },
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 6,
                    child: PrimaryButton(
                      text: AppTexts.acceptAndContinue,
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.signUp);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
