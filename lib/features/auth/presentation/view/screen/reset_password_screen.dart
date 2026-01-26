import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:joddly/app/widgets/input_field.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/title_subtitle_bar.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/core/constant/app_text_styles.dart';
import 'package:joddly/features/auth/presentation/viewmodel/reset_password_view_model.dart';
import 'package:provider/provider.dart';
import '../../../../../app/routes/route_name.dart';
import '../../../../../core/constant/app_color.dart';
import '../widgets/show_white_dialog.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _password = TextEditingController();
  final _rePassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _password.dispose();
    _rePassword.dispose();
    super.dispose();
  }

  void onPressed() {
    if (_formKey.currentState!.validate()) {
      print('Password: ${_password.text.trim()}');
      print('Confirm Password: ${_rePassword.text.trim()}');
      showWhiteDialog(
        context: context,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppSizeBox.height20,
            Image.asset(AppImages.checkColor, height: 100, width: 100),
            AppSizeBox.height20,
            Text(
              'Reset Password\nSuccessful!',
              style: AppTextStyles.size20w600(color: Colors.black),
              textAlign: TextAlign.center,
            ),
            AppSizeBox.height10,
            Text(
              'You will be directed to the homepage.',
              style: AppTextStyles.size14w400(color: Color(0xff4A4C56)),
            ),
            AppSizeBox.height20,
            PrimaryButton(
              label: 'Get Started',
              onPressed: (){
                Navigator.pushReplacementNamed(context, RouteName.login);
              },
            ),
            AppSizeBox.height20,
          ],
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Password not set',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
      );
      print('password not set');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ResetPasswordViewModel>(
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
                    WidgetHeader(),
                    AppSizeBox.height20,
                    TitleSubtitleBar(
                      title: 'Set a New password',
                      subtitle:
                          'Secure your account by choosing a strong new password.',
                    ),
                    AppSizeBox.height30,
                    InputField(
                      topLabel: 'Password',
                      hintText: 'Enter your password',
                      maxLine: 1,
                      controller: _password,
                      validator: provider.validatePassword,
                      onSuffixTap: provider.togglePassword,
                      obscureText: provider.isPasswordHidden,
                      icon: provider.isPasswordHidden
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    AppSizeBox.height20,
                    InputField(
                      topLabel: 'Re-type password',
                      hintText: 'Re-type your password',
                      maxLine: 1,
                      controller: _rePassword,
                      validator: (val) =>
                          provider.validateConfirmPassword(val, _password.text),
                      onSuffixTap: provider.toggleConfirm,
                      obscureText: provider.isConfirmHidden,
                      icon: provider.isConfirmHidden
                          ? Icons.visibility_outlined
                          : Icons.visibility_off,
                    ),
                    AppSizeBox.height30,
                    PrimaryButton(
                      label: 'Set New Password',
                      onPressed: onPressed,
                    ),
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
