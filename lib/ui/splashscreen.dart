import 'package:flutter/material.dart';
import 'package:papi_kost/ui/constant/contantdecoration.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var hasil;

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: backGroundColor,
        child: Column(
          children: [_logoText()],
        ));
  }

  Widget _logoText() {
    return Container(
      margin: EdgeInsets.all(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
