import 'package:flutter/foundation.dart';

class PaymentMethodProvider with ChangeNotifier {
  int selectedMethod = 1;

  void selectMethod(int value) {
    selectedMethod = value;
    notifyListeners();
  }
}
