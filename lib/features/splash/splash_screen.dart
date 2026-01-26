import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';
import '../../app/routes/route_name.dart';
import '../../core/constant/app_images.dart';
import '../../core/constant/app_size_box.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteName.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(AppImages.splash, fit: BoxFit.cover),
          ),
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logo),
                  AppSizeBox.height100,
                  SpinKitCircle(
                    color: Color(0xff7C5BFD),
                    size: 80.0
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
