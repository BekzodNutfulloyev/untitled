import 'package:flutter/cupertino.dart';

class CountProviders extends ChangeNotifier {
  int count = 0;

  void add() {
    count++;
    notifyListeners();
  }

  void subtraction() {
    count--;
    notifyListeners();
  }
}
