import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papi_kost/ui/constant/constantimage.dart';
import 'package:papi_kost/ui/constant/constantwidget.dart';
import 'package:papi_kost/ui/screen/login/widget/widget.dart';
import 'package:supercharged/supercharged.dart';

class LoginPage extends StatefulWidget {
  PageController pageController;

  LoginPage({this.pageController});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanDown: (_) {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        color: Theme.of(context).cardColor,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                headerLogin(),
                widgetLoginWith(),
                TextFieldItem(
                  icon: null,
                  hintText: "Email",
                  statusObscure: false,
                ),
                TextFieldItem(
                  icon: Icons.remove_red_eye,
                  hintText: "Password",
                  statusObscure: true,
                ),
                Button(
                  titleButton: 'Log in',
                ),
                dividerTranstparant,
                textForgotPassword(context),
                Expanded(
                  child: SizedBox(),
                ),
                goToSignUp(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget headerLogin() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              child: Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  color: Colors.black.withOpacity(0.8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textForgotPassword(BuildContext context) {
    return Text(
      "Forgot Password ?",
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget widgetLoginWith() {
    return Row(
      children: [
        Expanded(
          child: ButtonLoginWith(
            loginWith: 'Google',
            icon: FontAwesomeIcons.google,
            color: Theme.of(context).buttonColor,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: ButtonLoginWith(
            loginWith: 'Facebook',
            icon: FontAwesomeIcons.facebookF,
            color: '#3b5998'.toColor(),
          ),
        ),
      ],
    );
  }

  Widget goToSignUp(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              widget.pageController.animateToPage(1,
                  duration: Duration(seconds: 1), curve: Curves.easeIn);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
