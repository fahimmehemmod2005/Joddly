import 'package:flutter/material.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/resend_button.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/features/auth/presentation/viewmodel/otp_view_model.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../../../../../app/routes/route_name.dart';
import '../../../../../app/widgets/title_subtitle_bar.dart';
import '../../../../../core/constant/app_size_box.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _pinController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  void onPressed() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, RouteName.resetPass);
      print("OTP: ${_pinController.text.trim()}");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'fill all field',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          backgroundColor: Colors.red.shade700,
          duration: const Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
      );
      print('fill all field');
    }
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      height: 70.0,
      width: 75.0,
      textStyle: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Color(0xff7C5BFD)),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Color(0xff7C5BFD)),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Colors.red, width: 1),
      ),
    );
    return Consumer<OtpViewModel>(
      builder: (context, provider, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSizeBox.height5,
                    WidgetHeader(),
                    AppSizeBox.height25,
                    TitleSubtitleBar(
                      title: "Verify OTP Code",
                      subtitle:
                          "Enter the 4-digit code sent to your email to complete verification.",
                    ),
                    AppSizeBox.height30,
                    Pinput(
                      keyboardType: TextInputType.number,
                      validator: provider.otpValidator,
                      controller: _pinController,
                      length: 4,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      errorPinTheme: errorPinTheme,
                    ),
                    AppSizeBox.height30,
                    ResendButton(),
                    AppSizeBox.height30,
                    PrimaryButton(label: 'Verify', onPressed: onPressed),
                    AppSizeBox.height10,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
