import 'package:flutter/material.dart';

class InputValue extends ChangeNotifier {
  int _count = 0;
  String name = 'Chirag';
  int get getCounter {
    return _count;
  }

  String get getName {
    return name;
  }

  void incrementCounter() {
    _count += 1;
    notifyListeners();
  }

  void setName(String userName) {
    name = userName;
    notifyListeners();
  }
}
