import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/onboardprovider.dart';
import 'package:papi_kost/ui/constant/constantlist.dart';
import 'package:papi_kost/ui/router/router_generator.dart';
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
      viewportFraction: 1.0,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var onBoardProv = Provider.of<OnBoardProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              onBoardProv.changeDots(index);
              print("Page Controller Index : $index");
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _dotsIndicator(),
            _button(),
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
              margin:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: DotsIndicator(
                dotsCount: onBoardPageList.length,
                position: onBoardProv.indexdots.toDouble(),
                decorator: DotsDecorator(
                  spacing: EdgeInsets.all(4.0),
                  activeSize: Size(20.0, 10.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  activeColor: Theme.of(context).buttonColor,
                ),
              ),
            );
          },
        );
      },
    );
  }

  //Button Skip
  Widget _button() {
    return Consumer<OnBoardProvider>(
      builder: (context, _onBoardProv, _) {
        if (_onBoardProv.indexdots != onBoardPageList.lastIndex) {
          return GestureDetector(
            onTap: () {
              _pageController.nextPage(
                  duration: Duration(
                    milliseconds: 500,
                  ),
                  curve: Curves.linear);
            },
            child: Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                color: Theme.of(context).buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).backgroundColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          );
        }

        return GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, RouterGenerator.routeLogin, (route) => false);
          },
          child: Container(
            margin:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            height: 40,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              color: Theme.of(context).buttonColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Center(
              child: Text(
                "Let's Go !",
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).backgroundColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
