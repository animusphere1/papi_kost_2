import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardProvider extends ChangeNotifier {
  int _indexdots = 0;
  int get indexdots => _indexdots;

  DateTime _dateTime = DateTime.now();
  DateTime get dateTIme => _dateTime;

  void changeDots(int index) {
    _indexdots = index;
    notifyListeners();
  }

  void dateTimeFunction() async {
    _dateTime = await DateTime.now();
    notifyListeners();
  }

  void coba() {
    _indexdots = _indexdots + 2;
    print(indexdots);
    notifyListeners();
  }
}
