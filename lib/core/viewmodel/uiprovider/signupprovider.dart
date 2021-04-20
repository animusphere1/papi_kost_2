import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  void goToSignUp(PageController controller, BuildContext context) {
    controller.jumpToPage(1);

    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Text(context.owner.debugBuilding.toString());
        });
  }
}
