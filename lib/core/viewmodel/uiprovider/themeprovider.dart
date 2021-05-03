import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      backgroundColor: "#FFFFFF".toColor(),
      accentColor: "#041C33".toColor(),
      cardColor: '#f6f7f9'.toColor(),
      buttonColor: "#ff6600".toColor(),
      fontFamily: 'NunitoSans',
    );

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: "#ff6600".toColor(),
      statusBarIconBrightness: Brightness.light,
    ));

    notifyListeners();
  }
}
