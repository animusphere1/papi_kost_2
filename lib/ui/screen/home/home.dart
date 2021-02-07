import 'dart:async';
import 'package:flutter/material.dart';

import 'widget/appBarHome.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int angka = 0;
  Timer timer;

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            title: AppBarHome(),
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
