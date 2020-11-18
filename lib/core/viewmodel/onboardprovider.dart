import 'package:flutter/cupertino.dart';

class OnBoardProvider extends ChangeNotifier {
  int _indexdots = 0;
  int get indexdots => _indexdots;

  void changeDots(int index) {
    _indexdots = index;
    notifyListeners();
  }
}
