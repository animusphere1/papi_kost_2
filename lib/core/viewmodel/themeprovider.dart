import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class ThemeProvider extends ChangeNotifier {
  //atribute
  ThemeData _themeData;
  ThemeData get thema => _themeData;

  ThemeProvider() {
    checkTheme();
  }

  //function checking ui theme
  void checkTheme() {
    _themeData = ThemeData(
      backgroundColor: "#fdf5ed".toColor(),
    );
    notifyListeners();
  }

  void changeTheme() {
    notifyListeners();
  }
}
