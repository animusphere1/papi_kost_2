import 'package:flutter/cupertino.dart';

class SignUpProvider extends ChangeNotifier {
  //attributte
  bool _statusAggrement1 = false;
  bool get statusAggrement1 => _statusAggrement1;

  bool _statusAggrement2 = false;
  bool get statusAggrement2 => _statusAggrement2;

  String _nameSignUp = '';
  String get nameSignUp => _nameSignUp;

  void changeNameSignUpTextField(String value) {
    print('name sign up : $nameSignUp');
    _nameSignUp = value;
    notifyListeners();
  }
}
