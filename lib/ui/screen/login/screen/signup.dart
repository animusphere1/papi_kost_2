import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:papi_kost/core/viewmodel/signupprovider.dart';
import 'package:papi_kost/ui/constant/enum.dart';
import 'package:papi_kost/ui/screen/login/widget/widget.dart';
import 'package:provider/provider.dart';
import 'package:supercharged/supercharged.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Column(
          children: [
            bodySignUp(context),
            goToLogin(context),
          ],
        ),
      ),
    );
  }

  Widget bodySignUp(BuildContext context) {
    return Column(
      children: [
        widgetSignUpWith(),
        TextFieldItem(
          icon: null,
          hintText: "Name",
          statusObscure: false,
          onChange: (_) => Provider.of<SignUpProvider>(context, listen: false)
              .changeStatus(_),
          focus: TextFocus.focus,
        ),
        TextFieldItem(
          icon: null,
          hintText: "Email",
          statusObscure: false,
          focus: TextFocus.focus,
        ),
        TextFieldItem(
          icon: Icons.remove_red_eye,
          hintText: "Password",
          statusObscure: true,
          focus: TextFocus.focus,
        ),
        TextFieldItem(
          icon: Icons.remove_red_eye,
          hintText: "Password",
          statusObscure: true,
          focus: TextFocus.unFocus,
        ),
        buttonUiProv(),
      ],
    );
  }

  Consumer<SignUpProvider> buttonUiProv() {
    return Consumer<SignUpProvider>(
      builder: (context, signUpProv, _) {
        if (signUpProv.statusAggrement1 == false &&
            signUpProv.statusAggrement2 == false) {
          return Button(
            colorButtonBackground: Colors.grey.withOpacity(0.3),
            titleButton: "Sign Up",
            colorTitleButton: Theme.of(context).backgroundColor,
            icon: Icons.person,
          );
        }

        return Button(
          colorButtonBackground: Theme.of(context).accentColor,
          titleButton: "Sign Up",
          colorTitleButton: Theme.of(context).backgroundColor,
          icon: Icons.person,
        );
      },
    );
  }

  Widget widgetSignUpWith() {
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
      ),
    );
  }

  Widget goToLogin(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {},
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Have an Account ? ",
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Login",
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
