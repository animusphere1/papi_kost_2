import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/onboardprovider.dart';
import 'package:papi_kost/ui/screen/home/widget/widget.dart';
import 'package:provider/provider.dart';

class AppBarHome extends StatefulWidget {
  @override
  _AppBarHomeState createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          SearchWidgetHome(),
          Expanded(
            child: Row(
              children: [
                iconStackLove(context),
                iconStackLove(context),
                iconStackLove(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget iconStackLove(BuildContext context) {
    return Stack(
      children: [
        Consumer<OnBoardProvider>(
          builder: (context, prov, _) {
            return iconLove(prov: () => prov.coba(context), context: context);
          },
        ),
        Positioned(
          right: 1,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.04,
            decoration: BoxDecoration(
              color: Theme.of(context).buttonColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                Provider.of<OnBoardProvider>(context).indexdots.toString(),
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 8,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget iconLove({Function() prov, BuildContext context}) {
    return GestureDetector(
      onTap: () {
        prov != null ? prov() : {};
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Icon(Icons.favorite_border,
            size: 30, color: Theme.of(context).backgroundColor),
      ),
    );
  }
}
