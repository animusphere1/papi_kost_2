import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Hero(
            tag: "LogoText",
            child: Image.asset(
              'assets/TheJourneyBlack.png',
            ),
          )
        ],
      ),
    );
  }
}
