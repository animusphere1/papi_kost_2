import 'package:flutter/material.dart';

class OnBoardPage extends StatelessWidget {
  final String titleTop;
  final String titleMid;

  OnBoardPage({
    this.titleTop,
    this.titleMid,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Container(
          color: Colors.blue,
        ));
  }

  Widget _checkBox() {
    return CheckboxListTile(value: null, onChanged: (value) {});
  }
}
