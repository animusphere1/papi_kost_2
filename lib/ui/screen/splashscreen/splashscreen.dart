import 'package:flutter/material.dart';
import 'package:papi_kost/ui/constant/constantimage.dart';
import 'package:supercharged/supercharged.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).backgroundColor,
        child: Stack(
          children: [
            _logo(),
            _bottomImage(),
          ],
        ),
      ),
    );
  }

  //logo
  Widget _logo() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        child: Image.asset(
          logothejourneywhite,
          fit: BoxFit.fill,
          width: MediaQuery.of(context).size.width * 0.7,
        ),
      ),
    );
  }

  // bottomImage
  Widget _bottomImage({double tinggi = 0.28}) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * tinggi,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                '#374555'.toColor().withOpacity(0.8), BlendMode.darken),
            image: AssetImage(livingroomimage),
          ),
        ),
      ),
    );
  }
}
