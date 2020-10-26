import 'package:flutter/material.dart';
import 'package:papi_kost/ui/screen/login.dart';
import 'package:papi_kost/ui/screen/splashscreen.dart';

class RouterGenerator {
  static const String routeSplash = "/";
  static const String routeLogin = "/login";

  static const nama = 'fajar';

  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case routeSplash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
        break;
      case routeLogin:
        return MaterialPageRoute(builder: (_) => Login());
        break;
      default:
    }
  }
}
