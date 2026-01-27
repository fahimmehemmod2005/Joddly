import 'package:flutter/material.dart';
import 'package:joddly/app/routes/route_name.dart';
import 'package:joddly/core/constant/app_images.dart';

import '../../../../../app/widgets/primary_button.dart';
import '../../../../../core/constant/app_size_box.dart';

class WithoutLoginScreen extends StatefulWidget {
  const WithoutLoginScreen({super.key});

  @override
  State<WithoutLoginScreen> createState() => _WithoutLoginScreenState();
}

class _WithoutLoginScreenState extends State<WithoutLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
              width: double.infinity,
              child: Image.asset(AppImages.withoutLoginScreen,fit: BoxFit.cover,)
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(
                          showGradient: false,
                          backgroundColor: Colors.transparent,
                          borderColor: Color(0xff7C5BFD),
                          textColor: Colors.black,
                          label: 'Sign Up',
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, RouteName.signup);
                          },
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Expanded(
                        child: PrimaryButton(
                          textColor: Colors.white,
                          label: 'Login',
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, RouteName.login);
                          },
                        ),
                      ),
                    ],
                  ),
                  AppSizeBox.height15,
                  TextButton(
                      child: Text('Continue as Guest'),
                      onPressed: (){},
                  )
                ],
              ),
            ),
          ),
          AppSizeBox.height10,
        ],
      ),
    );
  }
}
