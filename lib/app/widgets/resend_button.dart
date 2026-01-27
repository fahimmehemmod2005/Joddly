import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../features/auth/presentation/viewmodel/resend_button_view_model.dart';

class ResendButton extends StatelessWidget {
  const ResendButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ResendButtonViewModel>(
      builder: (context, resend, child) {
        return Center(
          child: Text.rich(
            TextSpan(
              text: "Didn’t receive the code? ",
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xff4A4C56)),
              children: [
                resend.isResendAvailable
                    ? TextSpan(
                  text: "Resend Code",
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xff7C5BFD)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = resend.onResend,
                )
                    : TextSpan(
                  text: " ${resend.formatTime()}",
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xff7C5BFD)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}