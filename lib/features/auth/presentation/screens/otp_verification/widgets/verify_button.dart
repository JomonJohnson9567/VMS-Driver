import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vms_driver/core/constants/app_texts.dart';
import 'package:vms_driver/core/widgets/primary_button.dart';
import '../cubit/otp_verification_cubit.dart';
import '../cubit/otp_verification_state.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OtpVerificationCubit, OtpVerificationState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: PrimaryButton(
                text: AppTexts.back,
                isOutlined: true,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: PrimaryButton(
                icon: Icons.arrow_forward,
                onTap: () {
                  context.read<OtpVerificationCubit>().verifyRequested();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}





    
// class VerifyButton extends StatelessWidget {
//   const VerifyButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         BlocBuilder<OtpVerificationBloc, OtpVerificationState>(
//           builder: (context, state) {
//             return PrimaryButton(
//               text: state.status == OtpStatus.loading
//                   ? 'Verifying...'
//                   : 'Verify',
//               onTap: () {
//                 if (state.status != OtpStatus.loading) {
//                   context.read<OtpVerificationBloc>().add(
//                     OtpVerifyRequested(),
//                   );
//                 }
//               },
//             );
//           },
//         ),
//       ],
//     );
//   }
// }