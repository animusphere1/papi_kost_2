import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class ThemeProvider extends ChangeNotifier {
  //atribute
  ThemeData _themeData;
  ThemeData get theme => _themeData;

  ThemeProvider() {
    checkTheme();
  }

  //function checking ui theme
  void checkTheme() {
    _themeData = ThemeData(
      backgroundColor: "#041C33".toColor(),
      accentColor: "#041C33".toColor(),
      cardColor: '#f6f7f9'.toColor(),
      fontFamily: 'NunitoSans',
    );
    notifyListeners();
  }

  void changeTheme() {
    notifyListeners();
  }
}
