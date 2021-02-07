import 'package:flutter/cupertino.dart';

class IconProvider extends ChangeNotifier {
  bool _haveNotificationLove;
  bool get haveNotificationLove => _haveNotificationLove;

  int _totalCountIconLove;
  int get totalCountIconLove => _totalCountIconLove;

  getNotificationIconLove() async {
    await Future.delayed(Duration(milliseconds: 10));
    _totalCountIconLove = 20;
    _haveNotificationLove = true;

    if (_totalCountIconLove > 20) {
      _totalCountIconLove = null;
    }
    notifyListeners();
  }

  deleteNotificationIconLove() {
    _totalCountIconLove = 0;
    _haveNotificationLove = true;
    notifyListeners();
  }
}
