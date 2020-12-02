import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function function;
  final String titleButton;

  const Button({
    Key key,
    this.function,
    this.titleButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(titleButton);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
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
                color: Theme.of(context).backgroundColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
