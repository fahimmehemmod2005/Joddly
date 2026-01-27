import 'package:flutter/material.dart';
import 'package:joddly/features/auth/presentation/view/screen/forgot_screen.dart';
import 'package:joddly/features/auth/presentation/view/screen/login_screen.dart';
import 'package:joddly/features/auth/presentation/view/screen/otp_screen.dart';
import 'package:joddly/features/auth/presentation/view/screen/reset_password_screen.dart';
import 'package:joddly/features/auth/presentation/view/screen/signup_screen.dart';
import 'package:joddly/features/onboarding/presentation/view/screen/onboarding_screen.dart';
import 'package:joddly/features/onboarding/presentation/view/screen/without_login_screen.dart';
import 'package:joddly/features/splash/splash_screen.dart';
import 'route_name.dart';

class AppRoutes {
  static const String initialRoute = RouteName.splashScreen;

  static final Map<String, WidgetBuilder> routes = {
    RouteName.splashScreen: (context) => const SplashScreen(),
    RouteName.onboarding: (context) => const OnboardingScreen(),
    RouteName.withoutLoginScreen: (context) => const WithoutLoginScreen(),
    RouteName.login: (context) => const LoginScreen(),
    RouteName.forgot: (context) => const ForgotScreen(),
    RouteName.otp: (context) => const OtpScreen(),
    RouteName.resetPass: (context) => const ResetPasswordScreen(),
    RouteName.signup: (context) => const SignupScreen(),

  };
}