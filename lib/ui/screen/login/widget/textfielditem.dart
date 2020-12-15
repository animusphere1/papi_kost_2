import 'package:flutter/material.dart';

class TextFieldItem extends StatefulWidget {
  IconData icon;
  String hintText;
  bool statusObscure;
  bool readOnly;

  TextFieldItem({
    this.icon,
    @required this.hintText,
    this.statusObscure = false,
    this.readOnly = false,
  });

  @override
  _TextFieldItemState createState() => _TextFieldItemState();
}

class _TextFieldItemState extends State<TextFieldItem> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  initState() {
    _textEditingController.text = '';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);

    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black38.withOpacity(0.05)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                controller: _textEditingController,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  var hasil = value.replaceFirst(new RegExp(r'^0+'), '');
                },
                onEditingComplete: () => node.nextFocus(),
                obscureText: widget.statusObscure,
                style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  border: InputBorder.none,
                ),
              ),
            ),

            //icon show hide
            widget.icon != null
                ? GestureDetector(
                    onTap: () {
                      changeObscureText();
                    },
                    child: Icon(
                      widget.icon,
                      color: Colors.black38.withOpacity(0.5),
                    ),
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
