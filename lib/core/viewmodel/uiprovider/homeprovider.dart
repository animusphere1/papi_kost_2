import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  String _hintTextRand;
  String get hintTextRand => _hintTextRand;

  Random rand = Random();
  List<String> _listHintTextRand = ['Cari', 'Apa', 'kaka'];

  void changeHintText() async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _hintTextRand = _listHintTextRand[rand.nextInt(3)];
      notifyListeners();
    });
  }
}
