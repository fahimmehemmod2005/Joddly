import 'package:flutter/cupertino.dart';

class LoginViewModel extends ChangeNotifier {
  bool _isPasswordHidden = true;
  bool get isPasswordHidden => _isPasswordHidden;

  void togglePassword() {
    _isPasswordHidden = !_isPasswordHidden;
    notifyListeners();
  }

  // Email Validator
  String? validateEmail(String? email) {
    if (email == null || email.isEmpty) return 'Email is required';
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(email)) return 'Enter a valid email';
    return null;
  }

  // Password Validator
  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) return 'Password is required';
    if (password.length < 6) return 'Password must be at least 6 characters';
    /*final hasUppercase = password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = password.contains(RegExp(r'[a-z]'));
    final hasNumber = password.contains(RegExp(r'\d'));
    final hasSpecial = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    if (!hasUppercase) return 'Must contain at least one uppercase letter';
    if (!hasLowercase) return 'Must contain at least one lowercase letter';
    if (!hasNumber) return 'Must contain at least one number';
    if (!hasSpecial) return 'Must contain at least one special character';*/
    return null;
  }

  bool _isChecked = false;
  bool get isChecked => _isChecked;

  void toggle(bool? value) {
    _isChecked = value ?? false;
    notifyListeners();
  }
}
