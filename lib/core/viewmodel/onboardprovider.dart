import 'package:flutter/cupertino.dart';

class OnBoardProvider extends ChangeNotifier {
  int _indexdots = 0;
  int get indexdots => _indexdots;

  void changeDots(int index) {
    _indexdots = index;
    // print(indexdots);
    notifyListeners();
  }

  // void indexdotsgantiklik(PageController controller) {
  //   if (_indexdots != onboardingscreenlist.length - 1) {
  //     _indexdots++;
  //     controller.animateToPage(_indexdots,
  //         duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  //   }
  //   print(_indexdots);
  //   notifyListeners();
  // }
}
