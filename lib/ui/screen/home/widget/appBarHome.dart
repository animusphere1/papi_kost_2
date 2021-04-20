import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/iconhomeprovider/iconprovider.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/onboardprovider.dart';
import 'package:papi_kost/core/viewmodel/utilsprovider/locationuserprovider.dart';
import 'package:papi_kost/ui/screen/home/widget/widget.dart';
import 'package:provider/provider.dart';

class AppBarHome extends StatefulWidget {
  @override
  _AppBarHomeState createState() => _AppBarHomeState();
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  initState() {
    super.initState();
    Provider.of<LocationUser>(context, listen: false).loadLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 10, right: 10),
      child: Row(
        children: [
          SearchWidgetHome(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    return Consumer<IconProvider>(
      builder: (context, prov, _) {
        if (prov.haveNotificationLove == null &&
            prov.totalCountIconLove == null) {
          prov.getNotificationIconLove();
          return Stack(
            children: [
              iconLove(context, prov),
            ],
          );
        }

        if (prov.haveNotificationLove == true && prov.totalCountIconLove != 0) {
          return Stack(
            children: [
              iconLove(context, prov),
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.04,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      prov.totalCountIconLove.toString(),
                      style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }

        return Stack(
          children: [
            iconLove(context, prov),
          ],
        );
      },
    );
  }

  Widget iconLove(BuildContext context, IconProvider prov) {
    return GestureDetector(
      onTap: () async {
        prov.deleteNotificationIconLove();
        Provider.of<OnBoardProvider>(context, listen: false).coba(context);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Icon(
          Icons.favorite,
          size: 30,
          color: Theme.of(context).buttonColor,
        ),
      ),
    );
  }
}
