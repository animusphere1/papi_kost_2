import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/onboardprovider.dart';
import 'package:papi_kost/ui/constant/constantimage.dart';
import 'package:papi_kost/ui/router/routergenerator.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var prov = OnBoardProvider();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Provider.of<OnBoardProvider>(context, listen: false).changeStatus();
      switch (prov.statusLogin) {
        case true:
          Navigator.pushNamedAndRemoveUntil(
              context, RouterGenerator.routeLogin, (route) => false);
          break;
        case false:
          Navigator.pushNamedAndRemoveUntil(
              context, RouterGenerator.routeHome, (route) => false);
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).accentColor,
        child: Stack(
          children: [
            _logo(),
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
}
