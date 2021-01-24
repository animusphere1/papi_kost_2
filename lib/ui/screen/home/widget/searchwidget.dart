import 'package:flutter/material.dart';

class SearchWidgetHome extends StatefulWidget {
  @override
  _SearchWidgetHomeState createState() => _SearchWidgetHomeState();
}

class _SearchWidgetHomeState extends State<SearchWidgetHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 10),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black38.withOpacity(0.05)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
