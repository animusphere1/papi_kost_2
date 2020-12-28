import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function function;
  String titleButton;
  Color colorButtonBackground;
  Color colorTitleButton;
  IconData icon;

  Button({
    this.function,
    this.colorButtonBackground,
    this.titleButton,
    this.colorTitleButton,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function != null ? function(context) : print('kosong');
      },
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          margin: EdgeInsets.symmetric(
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: colorButtonBackground,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //check icon null or not
              (icon != null)
                  ? Icon(
                      icon,
                      color: Theme.of(context).backgroundColor,
                    )
                  : SizedBox(),
              SizedBox(
                width: 4,
              ),
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
