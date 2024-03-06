import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier {
  int number = 0;

  increaseNumber() {
    number += 1;

    notifyListeners();
  }

  decreaseNumber() {
    number--;
    notifyListeners();
  }

  updateNumber(int numberNew) {
    number = numberNew;
    notifyListeners();
  }
}
