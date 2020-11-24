import 'package:flutter/material.dart';
import 'package:papi_kost/ui/constant/constantimage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).accentColor,
        child: Stack(
          children: [
            _logo(),
          ],
        ),
      ),
    );
  }

  //logo
  Widget _logo() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        child: Image.asset(
          logothejourneywhite,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width * 0.7,
        ),
      ),
    );
  }
}
