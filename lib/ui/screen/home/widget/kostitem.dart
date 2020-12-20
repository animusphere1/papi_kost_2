import 'package:flutter/material.dart';

class KostItem extends StatefulWidget {
  String nama;

  KostItem({this.nama});
  @override
  _KostItemState createState() => _KostItemState();
}

class _KostItemState extends State<KostItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: widget.nama != null
          ? Center(
              child: Text(widget.nama),
            )
          : SizedBox(),
    );
  }
}
