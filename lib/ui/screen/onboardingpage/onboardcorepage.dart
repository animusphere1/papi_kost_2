import 'dart:async';

import 'package:flutter/material.dart';

class OnBoardPageCore extends StatefulWidget {
  @override
  _OnBoardPageCoreState createState() => _OnBoardPageCoreState();
}

class _OnBoardPageCoreState extends State<OnBoardPageCore> {
  PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 1,
  );

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      onPageChanged: (index) {
        print(index);
      },
      itemCount: _container.length,
      itemBuilder: (context, i) {
        return _container[i];
      },
    );
  }

  List<Container> _container = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.cyan,
    ),
  ];
}
