import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBarHome(),
            ],
          ),
        ),
      ),
    );
  }

  Widget appBarHome() {
    return Container(
      color: Colors.blue,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [],
      ),
    );
  }
}
