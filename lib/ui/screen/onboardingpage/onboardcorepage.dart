import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/onboardprovider.dart';
import 'package:papi_kost/ui/constant/constantlist.dart';
import 'package:supercharged/supercharged.dart';
import 'package:provider/provider.dart';

class OnBoardPageCore extends StatefulWidget {
  @override
  _OnBoardPageCoreState createState() => _OnBoardPageCoreState();
}

class _OnBoardPageCoreState extends State<OnBoardPageCore> {
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              Provider.of<OnBoardProvider>(context, listen: false)
                  .changeDots(index);
              print(index);
            },
            physics: BouncingScrollPhysics(),
            itemCount: onBoardPageList.length,
            itemBuilder: (context, i) {
              return onBoardPageList[i];
            },
          ),
          _bottomContainer(),
        ],
      ),
    );
  }

  //bottom container
  Widget _bottomContainer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                _dotsIndicator(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //dots indicator
  Widget _dotsIndicator() {
    return Builder(
      builder: (context) {
        return Consumer<OnBoardProvider>(
          builder: (context, onBoardProv, _) {
            return Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              child: DotsIndicator(
                dotsCount: onBoardPageList.length,
                position: onBoardProv.indexdots.toDouble(),
                decorator: DotsDecorator(
                  spacing: EdgeInsets.all(4.0),
                  activeSize: Size(20.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  activeColor: "#ff6600".toColor(),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
