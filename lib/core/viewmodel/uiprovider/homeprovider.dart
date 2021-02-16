import 'dart:async';
import 'dart:math';
import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  String _hintTextRand;
  String get hintTextRand => _hintTextRand;

  Random rand = Random();
  List<String> _listHintTextRand = [
    'Cari Apa Kaka',
    'Ada Yang Bisa Di Bantu',
    'Kaka Beli Kagak'
  ];

  void changeHintText() async {
    await Future.delayed(Duration(seconds: 1));
    Timer.periodic(Duration(seconds: 1), (timer) {
      _hintTextRand = _listHintTextRand[rand.nextInt(_listHintTextRand.length)];
      notifyListeners();
    });
  }
}
