import 'package:flutter/material.dart';

class NumberListProvider extends ChangeNotifier {
  List<int> numberList = [1, 2, 3];

  void add() {
    int last = numberList.last;
    numberList.add(last + 1);
    notifyListeners();
  }
}
