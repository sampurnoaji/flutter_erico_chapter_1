import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  int _qty = 0;

  int get qty => _qty;

  set qty(int value) {
    _qty = value;
    notifyListeners();
  }
}
