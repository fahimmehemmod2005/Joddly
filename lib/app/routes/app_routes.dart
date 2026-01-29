import 'package:flutter/material.dart';
import 'package:joddly/features/auth/presentation/view/screen/forgot_screen.dart';
import 'package:joddly/features/auth/presentation/view/screen/login_screen.dart';
import 'package:joddly/features/auth/presentation/view/screen/otp_screen.dart';
import 'package:joddly/features/auth/presentation/view/screen/reset_password_screen.dart';
import 'package:joddly/features/auth/presentation/view/screen/signup_screen.dart';
import 'package:joddly/features/discover/presentation/view/screen/discover_screen.dart';
import 'package:joddly/features/discover/presentation/view/screen/image_effects.dart';
import 'package:joddly/features/home/presentation/view/screen/home_screen.dart';
import 'package:joddly/features/home/presentation/view/screen/notification_screen.dart';
import 'package:joddly/features/home/presentation/view/screen/preview_image_screen.dart';
import 'package:joddly/features/home/presentation/view/screen/see_all_photos.dart';
import 'package:joddly/features/main/presentation/view/screen/bottom_nav_bar_screen.dart';
import 'package:joddly/features/main/presentation/view/screen/main_screen.dart';
import 'package:joddly/features/membership/presentation/view/screen/current_plan.dart';
import 'package:joddly/features/membership/presentation/view/screen/membership.dart';
import 'package:joddly/features/membership/presentation/view/screen/payment_method.dart';
import 'package:joddly/features/membership/presentation/view/screen/review_summary.dart';
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
    RouteName.mainScreen: (context) => const MainScreen(),
    RouteName.bottomNavScreen: (context) => const BottomNavBarScreen(),
    RouteName.homeScreen: (context) => const HomeScreen(),
    RouteName.seeAll: (context) => const SeeAllPhotos(),
    RouteName.previewImageScreen: (context) => const PreviewImageScreen(),
    RouteName.notificationScreen: (context) => const NotificationScreen(),
    RouteName.discoverScreen: (context) => const DiscoverScreen(),
    RouteName.imageEffects: (context) => const ImageEffects(),
    RouteName.membership: (context) => const Membership(),
    RouteName.currentPlan: (context) => const CurrentPlan(),
    RouteName.paymentMethod: (context) => const PaymentMethod(),
    RouteName.reviewSummary: (context) => const ReviewSummary(),

  };
}