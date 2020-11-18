import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/onboardprovider.dart';
import 'package:papi_kost/ui/constant/constantcolor.dart';
import 'package:papi_kost/ui/constant/constantimage.dart';
import 'package:papi_kost/ui/constant/constantlist.dart';
import 'package:papi_kost/ui/constant/constantwidget.dart';
import 'package:supercharged/supercharged.dart';
import 'package:provider/provider.dart';

class OnBoardPageCore extends StatefulWidget {
  @override
  _OnBoardPageCoreState createState() => _OnBoardPageCoreState();
}

class _OnBoardPageCoreState extends State<OnBoardPageCore> {
  PageController _pageController = PageController();

  List<Map<String, dynamic>> _text = [
    {'textatas': 'Sekarang', 'textbawah': ''},
    {'textatas': 'Sekarang1'},
    {'textatas': 'Sekarang2'}
  ];

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        brightness: Brightness.dark,
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        title: _appBarUi(),
      ),
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              Provider.of<OnBoardProvider>(context, listen: false)
                  .changeDots(index);
              print(index);
            },
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

  //Logo
  Widget _appBarUi() {
    return Container(
      height: 30,
      child: Row(
        children: [
          Image.asset(
            logothejourneywhite,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  //bottom container
  Widget _bottomContainer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: backgroundGreyColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            dividerTranstparant,
            _dotsIndicator(),
            dividerTranstparant,
            dividerTranstparant,
            _textH1(),
          ],
        ),
      ),
    );
  }

  //dots indicator
  Widget _dotsIndicator() {
    List<Color> _colorActive = [
      "#041C33".toColor(),
      "#ef8d6e".toColor(),
      "#041C33".toColor(),
    ];

    return Builder(
      builder: (context) {
        return Consumer<OnBoardProvider>(
          builder: (context, onBoardProv, _) {
            return Container(
              child: DotsIndicator(
                dotsCount: onBoardPageList.length,
                position: onBoardProv.indexdots.toDouble(),
                decorator: DotsDecorator(
                  spacing: EdgeInsets.all(4.0),
                  activeColor: _colorActive[onBoardProv.indexdots],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _textH1() {
    return Consumer<OnBoardProvider>(
      builder: (context, onBoarProv, _) {
        return Container(
          child: Text(
            _text[onBoarProv.indexdots]['textatas'],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        );
      },
    );
  }
}
