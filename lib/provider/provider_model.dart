import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier {
  int number = 15;

  increaseNumber() {
    number += 2;
    notifyListeners();
  }

  decreaseNumber() {
    number--;
    notifyListeners();
  }
}
