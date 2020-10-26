import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/themeprovider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  int fungsi;

  SplashScreen({this.fungsi = 1});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
                onDoubleTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeTheme();
                },
                child: _logo()),
          ),
          Text(widget.fungsi.toString()),
        ],
      ),
    );
  }

  Widget _logo() {
    return Container(
      child: Center(
        child: Image.asset('assets/TheJourneyWhite.png'),
      ),
    );
  }
}
