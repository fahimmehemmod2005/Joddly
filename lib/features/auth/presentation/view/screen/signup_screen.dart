import 'package:flutter/material.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/custom_rich_text.dart';
import 'package:joddly/app/widgets/divider_center_text.dart';
import 'package:joddly/app/widgets/input_field.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/title_subtitle_bar.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/features/auth/presentation/viewmodel/signup_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../../core/constant/app_color.dart';
import '../../../../../core/constant/app_images.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _rePassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _rePassword.dispose();
    super.dispose();
  }

  void onPressed() {
    if (_formKey.currentState!.validate()) {
      print('Name: ${_name.text.trim()}');
      print('Email: ${_email.text.trim()}');
      print('Password: ${_password.text.trim()}');
      print('Confirm Password: ${_rePassword.text.trim()}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Account create success.',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          backgroundColor: Color(0xff7C5BFD),
          duration: const Duration(seconds: 2),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Account create Failed',
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
      print('Account create failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SignupViewModel>(
      builder: (context, provider, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleSubtitleBar(
                      title: 'Welcome Back!',
                      subtitle:
                          'Create your account. It takes less than a minute. Enter your name, email & password',
                    ),
                    AppSizeBox.height30,
                    InputField(
                      topLabel: 'User Name',
                      hintText: 'Enter your name',
                      controller: _name,
                      validator: provider.validateFullName,
                    ),
                    AppSizeBox.height20,
                    InputField(
                      topLabel: 'Email',
                      hintText: 'Enter your email',
                      controller: _email,
                      validator: provider.validateEmail,
                    ),
                    AppSizeBox.height20,
                    InputField(
                      topLabel: 'Password',
                      hintText: 'Enter your password',
                      controller: _password,
                      validator: provider.validatePassword,
                      obscureText: provider.isPasswordHidden,
                      onSuffixTap: provider.togglePassword,
                      icon: provider.isPasswordHidden
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    AppSizeBox.height20,
                    InputField(
                      topLabel: 'Re-type Password',
                      hintText: 'Retype your password',
                      controller: _rePassword,
                      validator: (val) =>
                          provider.validateConfirmPassword(val, _password.text),
                      onSuffixTap: provider.toggleConfirm,
                      obscureText: provider.isConfirmHidden,
                      icon: provider.isConfirmHidden
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    AppSizeBox.height30,
                    PrimaryButton(label: 'Sign up', onPressed: onPressed),
                    AppSizeBox.height20,
                    CustomRichText(
                      text1: 'Already have an account? ',
                      text2: 'Sign in',
                      text2Tap: () {
                        Navigator.pushNamed(context, RouteName.login);
                      },
                    ),
                    AppSizeBox.height20,
                    DividerCenterText(title: 'OR'),
                    AppSizeBox.height20,
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
