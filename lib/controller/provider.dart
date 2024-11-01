import 'package:flutter/material.dart';

class DropDown extends ChangeNotifier {
  String? selectedValue;

  void seelectedValue(String? value) {
    selectedValue = value;
    notifyListeners();
  }

 
  bool resize = true;
  void changesize() {
    resize = !resize;
    notifyListeners();
  }
}
