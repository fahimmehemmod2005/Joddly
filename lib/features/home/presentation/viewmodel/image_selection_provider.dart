import 'package:flutter/foundation.dart';

class ImageSelectionProvider with ChangeNotifier {
  int selectedIndex = -1;

  void selectImage(int index) {
    if (selectedIndex == index) {
      selectedIndex = -1;
    } else {
      selectedIndex = index;
    }
    notifyListeners();
  }
}
