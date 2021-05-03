import 'package:flutter/cupertino.dart';

moveToNewPageCanBack(BuildContext context, String route) {
  Navigator.pushNamed(context, route);
}

moveToNewPageCanntBack(BuildContext context, String route) {
  Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
}
