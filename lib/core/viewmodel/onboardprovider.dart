import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardProvider extends ChangeNotifier {
  int _indexdots = 0;
  int get indexdots => _indexdots;

  DateTime _dateTime;
  DateTime get dateTIme => _dateTime;

  void changeDots(int index) {
    _indexdots = index;
    notifyListeners();
  }
}
