import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function function;
  String titleButton;
  Color colorButtonBackground;
  Color colorTitleButton;

  Button({
    this.function,
    this.colorButtonBackground,
    this.titleButton,
    this.colorTitleButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(titleButton);
      },
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          margin: EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: colorButtonBackground,
            border: Border.all(
              color: Theme.of(context).accentColor,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(0, 7),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titleButton,
                style: TextStyle(
                  color: colorTitleButton,
                  fontSize: 18,
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
