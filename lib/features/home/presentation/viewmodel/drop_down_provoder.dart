import 'package:flutter/foundation.dart';

class DropdownProvider with ChangeNotifier {
  String? selectedValue = 'data1';

  void selectValue(String? value) {
    selectedValue = value;
    notifyListeners();
  }
}
