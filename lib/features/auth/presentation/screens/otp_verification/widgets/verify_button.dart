import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:vms_driver/features/auth/presentation/screens/otp_verification/bloc/otp_verification_bloc.dart';
import 'package:vms_driver/core/widgets/primary_button.dart';

class VerifyButton extends StatelessWidget {
  const VerifyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<OtpVerificationBloc, OtpVerificationState>(
          builder: (context, state) {
            return PrimaryButton(
              text: state.status == OtpStatus.loading
                  ? 'Verifying...'
                  : 'Verify',
              onTap: () {
                if (state.status != OtpStatus.loading) {
                  context.read<OtpVerificationBloc>().add(
                    OtpVerifyRequested(),
                  );
                }
              },
            );
          },
        ),
      ],
    );
  }
}