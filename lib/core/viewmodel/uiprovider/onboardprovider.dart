import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardProvider extends ChangeNotifier {
  int _indexdots = 0;
  int get indexdots => _indexdots;

  DateTime _dateTime;
  DateTime get dateTime => _dateTime;

  void changeDots(int index) async {
    _indexdots = await index;
    notifyListeners();
  }

  Future<DateTime> changeDateTime() async {
    await Future.delayed(Duration(seconds: 2), () {
      _dateTime = DateTime.now();
    });
    notifyListeners();

    return _dateTime;
  }

  coba(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => Container(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    _indexdots = _indexdots + 2;
                    notifyListeners();
                  },
                  child: Text('tekan aku'),
                ),
              ),
            ));

    print('bisa jalan');
  }
}
