import 'package:flutter/material.dart';
import 'package:papi_kost/ui/screen/login/widget/widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanDown: (_) {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              TextFieldItem(),
              TextFieldItem(),
              TextFieldItem(),
              TextFieldItem(),
              TextFieldItem(),
            ],
          ),
        ),
      ),
    );
  }
}
