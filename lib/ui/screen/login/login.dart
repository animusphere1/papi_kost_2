import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen/loginpage.dart';
import 'screen/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 1.0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            physics: BouncingScrollPhysics(),
            children: [
              LoginPage(
                pageController: _pageController,
              ),
              SignUpPage(),
            ],
          ),
        ],
      ),
    );
  }
}
