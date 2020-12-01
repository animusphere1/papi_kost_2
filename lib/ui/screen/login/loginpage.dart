import 'package:flutter/material.dart';
import 'widget/widget.dart';

class LoginPage extends StatefulWidget {
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
        color: Theme.of(context).cardColor,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldItem(
                  hintText: "name@example.com",
                  statusObscure: false,
                  labelText: "Email",
                ),
                TextFieldItem(
                  icon: Icons.remove_red_eye,
                  hintText: "Password",
                  statusObscure: true,
                  labelText: "Password",
                ),
                TextFieldItem(
                  icon: Icons.remove_red_eye,
                  hintText: "Password",
                  statusObscure: true,
                  labelText: "Password",
                ),
                Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: MediaQuery.of(context).size.height * 0.1,
                child: Text(
                  "Dont have a account ? Let's join us",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
