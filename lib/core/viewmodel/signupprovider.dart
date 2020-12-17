import 'package:flutter/cupertino.dart';

class SignUpProvider extends ChangeNotifier {
  //attributte
  bool _statusAggrement1 = false;
  bool get statusAggrement1 => _statusAggrement1;

  bool _statusAggrement2 = false;
  bool get statusAggrement2 => _statusAggrement2;

  DateTime _dateTime;
  DateTime get dateTime => _dateTime;

  void changeStatus(String value) {
    print(value);
    notifyListeners();
  }
}
