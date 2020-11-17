import 'package:flutter/material.dart';
import 'package:papi_kost/ui/constant/constantimage.dart';
import 'onboardpage.dart';
import 'package:supercharged/supercharged.dart';

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
          Column(
            children: [
              _topLogo(),
              _topLogo(),
            ],
          ),
        ],
      ),
    );
  }

  List<OnBoardPage> onBoardPageList = [
    OnBoardPage(
      titleMid: "Let's Find A Better Place",
      titleTop: "Nama 3",
    ),
    OnBoardPage(
      titleMid: "Nama 2",
      titleTop: "Nama 2",
    ),
    OnBoardPage(
      titleMid: "Nama 3",
      titleTop: "Nama 1",
    ),
  ];

  //Logo
  Widget _topLogo() {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 10,
      ),
      child: Image.asset(
        logothejourneywhite,
        fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width * 0.4,
      ),
    );
  }
}
