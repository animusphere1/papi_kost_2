import 'package:flutter/material.dart';
import 'widget/widget.dart';
import 'package:papi_kost/ui/screen/home/widget/appBarHome.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: AppBarHome(),
      ),
    );
  }
}
