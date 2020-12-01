import 'package:flutter/material.dart';

class TextFieldItem extends StatefulWidget {
  IconData icon;
  String hintText;
  String labelText;
  bool statusObscure;

  TextFieldItem(
      {this.icon, this.hintText, this.labelText, this.statusObscure = false});

  @override
  _TextFieldItemState createState() => _TextFieldItemState();
}

class _TextFieldItemState extends State<TextFieldItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      margin: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black38.withOpacity(0.05)),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                onChanged: (value) {
                  print(value);
                },
                obscureText: widget.statusObscure,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  border: InputBorder.none,
                  labelText: widget.labelText,
                  labelStyle: TextStyle(
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ),

            //icon show hide
            widget.icon != null
                ? GestureDetector(
                    onTap: () {
                      changeObscureText();
                    },
                    child: Icon(widget.icon),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  void changeObscureText() {
    widget.statusObscure = !widget.statusObscure;

    if (widget.statusObscure == true) {
      widget.icon = Icons.remove_red_eye;
    } else {
      widget.icon = Icons.visibility_off;
    }

    setState(() {});
  }
}
