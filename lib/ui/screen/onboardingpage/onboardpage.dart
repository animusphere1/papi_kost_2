import 'package:flutter/material.dart';

class OnBoardPage extends StatelessWidget {
  final titleTop;
  final titleMid;

  OnBoardPage({
    this.titleTop,
    this.titleMid,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: Center(
        child: Text(titleMid),
      ),
    );
  }
}
