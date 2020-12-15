import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papi_kost/core/viewmodel/signupprovider.dart';
import 'package:papi_kost/ui/screen/login/widget/widget.dart';
import 'package:provider/provider.dart';
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
          vertical: 30,
        ),
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: [
            bodyLogin(context),
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
            hintText: "Email",
            statusObscure: false,
          ),
          TextFieldItem(
            icon: Icons.remove_red_eye,
            hintText: "Password",
            statusObscure: true,
          ),
          Container(
            child: Button(
              titleButton: 'Log in',
              colorButtonBackground: Theme.of(context).accentColor,
              colorTitleButton: Theme.of(context).backgroundColor,
            ),
          ),
          textForgotPassword(context),
        ],
      ),
    );
  }

  Widget textForgotPassword(BuildContext context) {
    return FutureBuilder(
        future: Provider.of<SignUpProvider>(context).updateDateTime(),
        builder: (context, _) {
          return Text(
            Provider.of<SignUpProvider>(context).dateTime.toString(),
            style: TextStyle(
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.bold,
            ),
          );
        });
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
        margin: EdgeInsets.symmetric(vertical: 10),
        child: GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Text(
              //   "Dont have a account ? ",
              //   style: TextStyle(
              //     color: Theme.of(context).accentColor,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(
              //   "Let's Join Us ",
              //   style: TextStyle(
              //     color: Theme.of(context).buttonColor,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
