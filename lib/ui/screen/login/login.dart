import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papi_kost/ui/screen/login/loginpage.dart';
import 'package:papi_kost/ui/screen/login/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  PageController _pageController = PageController(initialPage: 0);

  //
  List<Widget> _listPage = [
    LoginPage(),
    SignUpPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Theme.of(context).cardColor,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            physics: BouncingScrollPhysics(),
            children: _listPage,
          ),
        ],
      ),
    );
  }
}
