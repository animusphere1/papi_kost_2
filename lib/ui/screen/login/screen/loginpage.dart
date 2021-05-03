import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papi_kost/ui/globalfunction/constantnavigate.dart';
import 'package:papi_kost/ui/router/routergenerator.dart';
import 'package:papi_kost/ui/screen/login/widget/widget.dart';
import 'package:supercharged/supercharged.dart';
import 'package:papi_kost/ui/enum/enum.dart';

class LoginPage extends StatefulWidget {
  final PageController pageController;

  LoginPage({this.pageController});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool muncul = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanDown: (_) {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        // color: Theme.of(context).backgroundColor,
        child: Column(
          children: [
            bodyLogin(context),
            // SizedBox(
            //   height: 100,
            // ),
            goToSignUp(context),
          ],
        ),
      ),
    );
  }

  //header
  Widget headerLogin(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [],
        ),
      ),
    );
  }

  //body
  Widget bodyLogin(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          widgetLoginWith(),
          TextFieldItem(
            icon: null,
            hintText: "Email or Username",
            focus: TextFocus.focus,
            onChange: (value) => print(value),
          ),
          TextFieldItem(
            icon: Icons.remove_red_eye,
            hintText: "Password",
            statusObscure: true,
            inputType: TextInputType.number,
            focus: TextFocus.unFocus,
          ),
          Container(
            child: Button(
              titleButton: 'Log in',
              colorButtonBackground: Theme.of(context).accentColor,
              colorTitleButton: Theme.of(context).backgroundColor,
              onClick: () {
                moveToNewPageCanntBack(context, RouterGenerator.routeHome);
              },
            ),
          ),
          textForgotPassword(context),
        ],
      ),
    );
  }

  Widget textForgotPassword(BuildContext context) {
    return Text(
      'Forgot Password',
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget widgetLoginWith() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: ButtonLoginWith(
              loginWith: 'Google',
              icon: FontAwesomeIcons.google,
              color: Theme.of(context).buttonColor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: ButtonLoginWith(
              loginWith: 'Facebook',
              icon: FontAwesomeIcons.facebookF,
              color: '#3b5998'.toColor(),
            ),
          ),
        ],
      ),
    );
  }

  Widget goToSignUp(BuildContext context) {
    return Expanded(
      child: Container(
        child: GestureDetector(
          onTap: () {
            // moveToNewPageCanntBack(context, RouterGenerator.routeHome);
            setState(() {
              muncul = !muncul;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Dont have a account ? ",
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Let's Join Us ",
                style: TextStyle(
                  color: Theme.of(context).buttonColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
