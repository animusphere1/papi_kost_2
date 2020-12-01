import 'package:flutter/material.dart';
import 'widget/widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
            TextFieldItem(),
          ],
        ),
      ),
    );
  }
}
