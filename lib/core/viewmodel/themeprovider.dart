import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papi_kost/ui/router/router_generator.dart';
import 'package:supercharged/supercharged.dart';

class ThemeProvider extends ChangeNotifier {
  //atribute
  ThemeData _themeData;
  ThemeData get theme => _themeData;

  // BuildContext _context;
  // BuildContext get contextlocal => _context;

  BuildContext context;

  ThemeProvider() {
    checkTheme();
    // changeTheme(context);
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
    notifyListeners();
  }

  void changeTheme(BuildContext context) async {
    int hasil = 0;
    if (hasil != null) {
      switch (hasil) {
        case 0:
          Navigator.pushNamed(context, RouterGenerator.routeLogin);
          break;
        case 1:
          print("angka $hasil");
          break;
        default:
      }
    }
    notifyListeners();
  }
}
