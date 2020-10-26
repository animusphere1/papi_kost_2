import 'package:flutter/material.dart';
import 'package:papi_kost/ui/constant/constanttheme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeData(context).accentColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _logo(),
        ],
      ),
    );
  }

  Widget _logo() {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      width: 250,
      child: Image.asset(
        'assets/TheJourneyBlack.png',
      ),
    );
  }
}
