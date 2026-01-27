import 'package:joddly/features/auth/presentation/viewmodel/signup_view_model.dart';
import 'package:joddly/features/main/presentation/viewmodel/bottom_nav_view_model.dart';
import 'package:joddly/features/onboarding/presentation/viewmodel/onboarding_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../features/auth/presentation/viewmodel/forgot_view_model.dart';
import '../../features/auth/presentation/viewmodel/login_view_model.dart';
import '../../features/auth/presentation/viewmodel/otp_view_model.dart';
import '../../features/auth/presentation/viewmodel/resend_button_view_model.dart';
import '../../features/auth/presentation/viewmodel/reset_password_view_model.dart';

class AppViewModels {
  static final List<SingleChildWidget> viewModels = [
    ChangeNotifierProvider<OnboardingViewModel>(
      create: (_) => OnboardingViewModel(),
    ),
    ChangeNotifierProvider<LoginViewModel>(
      create: (_) => LoginViewModel(),
    ),
    ChangeNotifierProvider<ForgotViewModel>(
      create: (_) => ForgotViewModel(),
    ),
    ChangeNotifierProvider<OtpViewModel>(
      create: (_) => OtpViewModel(),
    ),
    ChangeNotifierProvider<ResendButtonViewModel>(
      create: (_) => ResendButtonViewModel(),
    ),
    ChangeNotifierProvider<SignupViewModel>(
      create: (_) => SignupViewModel(),
    ),
    ChangeNotifierProvider<ResetPasswordViewModel>(
      create: (_) => ResetPasswordViewModel(),
    ),
    ChangeNotifierProvider<BottomNavViewModel>(
      create: (_) => BottomNavViewModel(),
    ),
  ];
}
