import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  //atribute
  ThemeData _themeData;
  ThemeData get thema => _themeData;

  String _coba = 'nama';
  String get coba => _coba;

  ThemeProvider() {
    checkTheme();
  }

  //function checking ui theme
  void checkTheme() {
    _themeData = ThemeData(
      accentColor: Colors.blue,
    );
    notifyListeners();
  }

  void changeTheme() {
    _themeData = _themeData = ThemeData(
      accentColor: Colors.red,
    );
    notifyListeners();
  }

  void printHasil() {
    print(coba);
  }
}
