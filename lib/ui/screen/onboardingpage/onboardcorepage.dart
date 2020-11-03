import 'package:flutter/material.dart';
import 'onboardpage.dart';

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
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).backgroundColor,
          ),
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              print(index);
            },
            itemCount: onBoardPageList.length,
            itemBuilder: (context, i) {
              return onBoardPageList[i];
            },
          ),
        ],
      ),
    );
  }
}

List<OnBoardPage> onBoardPageList = [
  OnBoardPage(titleMid: "nama 1", titleTop: "Nama 3"),
  OnBoardPage(titleMid: "Nama 2", titleTop: "Nama 2"),
  OnBoardPage(titleMid: "Nama 3", titleTop: "Nama 1"),
];
