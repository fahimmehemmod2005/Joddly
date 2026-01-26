import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:joddly/app/widgets/checkbox_forgot_row.dart';
import 'package:joddly/app/widgets/custom_rich_text.dart';
import 'package:joddly/app/widgets/divider_center_text.dart';
import 'package:joddly/app/widgets/input_field.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/title_subtitle_bar.dart';
import 'package:joddly/core/constant/app_color.dart';
import 'package:joddly/core/constant/app_images.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/features/auth/presentation/view/widgets/show_white_dialog.dart';
import 'package:joddly/features/auth/presentation/viewmodel/login_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../app/routes/route_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userName = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _userName.dispose();
    _password.dispose();
    super.dispose();
  }

  void onPressed () {
    if (_formKey.currentState!.validate()) {
      print('Email: ${_userName.text.trim()}');
      print('Password: ${_password.text.trim()}');
      showWhiteDialog(
        context: context,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppSizeBox.height20,
            SpinKitCircle(color: AppColor.primaryColor, size: 80),
            AppSizeBox.height30,
            const Text(
              'Log in',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            AppSizeBox.height20,
          ],
        ),
      );
      Timer(const Duration(seconds: 3), () {
        Navigator.pop(context);
        //Navigator.pushReplacementNamed(context, RouteName.onboarding);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Login Failed',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
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
      print('login failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
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
                      AppSizeBox.height15,
                      TitleSubtitleBar(
                        title: 'Welcome Back!',
                        subtitle:
                        'Log in to access your account and continue your journey.',
                      ),
                      AppSizeBox.height30,
                      InputField(
                        maxLine: 1,
                        topLabel: 'Email',
                        hintText: 'Enter your email',
                        controller: _userName,
                        validator: provider.validateEmail,
                      ),
                      AppSizeBox.height20,
                      InputField(
                        maxLine: 1,
                        topLabel: 'Password',
                        hintText: 'Enter your Password',
                        controller: _password,
                        validator: provider.validatePassword,
                        obscureText: provider.isPasswordHidden,
                        onSuffixTap: provider.togglePassword,
                        icon: provider.isPasswordHidden
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                      ),
                      CheckboxForgotRow(
                        checkValue: provider.isChecked,
                        checkOnChanged: provider.toggle,
                        forgotOnPressed: () {
                          Navigator.pushNamed(context, RouteName.forgot);
                        },
                      ),
                      AppSizeBox.height20,
                      PrimaryButton(
                        showGradient: true,
                        label: 'Login',
                        onPressed: onPressed
                      ),

                      AppSizeBox.height30,
                      CustomRichText(
                        text1: "Don't have an account? ",
                        text2: "Sign up",
                        text2Tap: () {},
                      ),
                      AppSizeBox.height30,
                      DividerCenterText(title: 'OR'),
                      AppSizeBox.height30,

                      PrimaryButton(
                        showGradient: false,
                        label: 'Continue with Google',
                        backgroundColor: Colors.white,
                        borderColor: AppColor.borderColor,
                        textColor: Colors.black,
                        showIcon: true,
                        icon: AppImages.google,
                        onPressed: () {},
                      ),
                      AppSizeBox.height20,
                      PrimaryButton(
                        showGradient: false,
                        label: 'Continue with Google',
                        backgroundColor: Colors.white,
                        borderColor: AppColor.borderColor,
                        textColor: Colors.black,
                        showIcon: true,
                        icon: AppImages.apple,
                        onPressed: () {},
                      ),
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
