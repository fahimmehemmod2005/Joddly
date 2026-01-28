import 'package:flutter/foundation.dart';

class AspectRatioProvider with ChangeNotifier {
  int selectedIndex = 0;

  void selectIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
