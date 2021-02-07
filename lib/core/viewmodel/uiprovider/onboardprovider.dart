import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardProvider extends ChangeNotifier {
  int _indexdots = 0;
  int get indexdots => _indexdots;

  int id;

  void changeDots(int index) async {
    _indexdots = await index;
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
