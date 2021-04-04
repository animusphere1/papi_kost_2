import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardProvider extends ChangeNotifier {
  int _indexdots = 0;
  int get indexdots => _indexdots;

  bool _statusLogin = true;
  bool get statusLogin => _statusLogin;

  void changeDots(int index) async {
    await Future.delayed(Duration(milliseconds: 10));
    _indexdots = index;
    notifyListeners();
  }

  void changeStatus() {
    _statusLogin = false;
    notifyListeners();
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
