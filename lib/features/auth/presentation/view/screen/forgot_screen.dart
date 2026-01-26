import 'package:flutter/material.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/app/widgets/input_field.dart';
import 'package:joddly/app/widgets/primary_button.dart';
import 'package:joddly/app/widgets/title_subtitle_bar.dart';
import 'package:joddly/app/widgets/widget_header.dart';
import 'package:joddly/core/constant/app_size_box.dart';
import 'package:joddly/features/auth/presentation/viewmodel/forgot_view_model.dart';
import 'package:provider/provider.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  final _userName = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _userName.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<ForgotViewModel>(
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
                        WidgetHeader(),
                        AppSizeBox.height20,
                        TitleSubtitleBar(
                          title: 'Forgot your password',
                          subtitle: 'Please enter your registered email to receive a reset link.',
                        ),
                        AppSizeBox.height30,
                        InputField(
                          topLabel: 'Email',
                          hintText: 'Enter your email',
                          maxLine: 1,
                          controller: _userName,
                          validator: provider.validateEmail,
                        ),
                        AppSizeBox.height30,
                        PrimaryButton(
                          label: 'Reset Password',
                          showGradient: true,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, RouteName.otp);
                              print('Email: ${_userName.text.trim()}');
                              print('Got the email');
                            }
                          },
                        ),
                        AppSizeBox.height10,
                      ],
                    ),
                  ),
                )
            ),
          );
        },
    );
  }
}
