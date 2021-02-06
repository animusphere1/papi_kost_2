import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int angka = 0;
  Timer timer;

  @override
  initState() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print(timer.hashCode);
      setState(() {
        angka = timer.tick;
      });
    });
    super.initState();
  }

  cancel() async {
    await Future.delayed(Duration(seconds: 4));
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: CustomScrollView(
    //     slivers: [
    //       SliverAppBar(
    //         elevation: 0,
    //         title: AppBarHome(),
    //       ),
    //     ],
    //   ),
    // );
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: () {
            cancel();
          },
          child: Text(angka.toString()),
        ),
      ),
    );
  }
}
