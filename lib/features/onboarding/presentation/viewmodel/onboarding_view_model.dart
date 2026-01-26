import 'package:flutter/cupertino.dart';
import '../../../../app/routes/route_name.dart';

class OnboardingViewModel extends ChangeNotifier {
  final PageController pageController = PageController();
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void onPageChanged(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  // Go to next page or navigate to final screen
  void nextPage(int totalLength, BuildContext context) {
    if (_currentIndex < totalLength - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _skipOnboarding(context);
    }
  }

  // Skip button logic
  void skip(BuildContext context) {
    _skipOnboarding(context);
  }

  // Private method to navigate to the target screen
  void _skipOnboarding(BuildContext context) {
    Navigator.pushReplacementNamed(context, RouteName.withoutLoginScreen);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
