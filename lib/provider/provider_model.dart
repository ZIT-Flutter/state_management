import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier {
  int number;

  NumberProvider({this.number = 15});

  increaseNumber() {
    number = number + 1;
    notifyListeners();
  }
}
