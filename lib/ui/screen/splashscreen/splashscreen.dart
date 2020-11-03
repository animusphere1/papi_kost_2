import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _logo(),
          ],
        ),
      ),
    );
  }

  Widget _logo() {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      child: Image.asset(
        'assets/TheJourneyBlack.png',
        width: MediaQuery.of(context).size.width * 0.5,
      ),
    );
  }
}
