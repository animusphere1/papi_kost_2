import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/homeprovider.dart';
import 'package:provider/provider.dart';
import 'widget/appBarHome.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  initState() {
    super.initState();
    Provider.of<HomeProvider>(context, listen: false).changeHintText();
  }

  @override
  dispose() {
    print('close');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var nama = 2;
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
