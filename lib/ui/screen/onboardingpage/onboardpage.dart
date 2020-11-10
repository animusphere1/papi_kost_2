import 'package:flutter/material.dart';

class OnBoardPage extends StatelessWidget {
  final String titleTop;
  final String titleMid;
  final Color warna;
  PageController pageController;

  OnBoardPage({
    this.titleTop,
    this.titleMid,
    this.warna,
    this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      alignment: Alignment.center,
      child: Container(
        color: warna,
        child: GestureDetector(
          onTap: () {
            pageController.jumpToPage(0);
          },
          child: Center(
            child: Container(
              color: Colors.black,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
