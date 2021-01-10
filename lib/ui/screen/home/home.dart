import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:papi_kost/core/viewmodel/deviceinfoprovider.dart';
import 'package:papi_kost/core/viewmodel/locationuserprovider.dart';
import 'package:papi_kost/core/viewmodel/onboardprovider.dart';
import 'package:papi_kost/ui/constant/constantwidget.dart';
import 'package:papi_kost/ui/screen/home/widget/widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var hasil = 0.34;

  @override
  initState() {
    super.initState();
    // Provider.of<LocationUser>(context, listen: false).getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: appBarHome(context),
            pinned: true,
            brightness: Brightness.light,
            toolbarHeight: MediaQuery.of(context).size.height * hasil,
            backgroundColor: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }

  //AppBar
  Widget appBarHome(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.34,
      color: Theme.of(context).accentColor,
      child: appBarHomeMenu(context),
    );
  }

  Widget appBarHomeMenu(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Consumer2<LocationUser, DeviceInfoCheck>(
                    builder: (context, locationUser, deviceInfo, _) {
                  if (locationUser.positionUser == null) {
                    locationUser.loadLocation();
                    // deviceInfo.loadDeviceInfo();
                    return Container(
                      height: 20,
                    );
                  }

                  return Container(
                    height: 20,
                    child: Text(
                      locationUser.positionUser.latitude.toString(),
                      style: TextStyle(
                        color: Theme.of(context).backgroundColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  );
                }),
                dividerTranstparant,
                Text(
                  hasil.toString(),
                  style: TextStyle(
                    color: Theme.of(context).buttonColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Consumer<OnBoardProvider>(builder: (context, onboard, _) {
                  onboard.dateTimeFunction();

                  return Text(onboard.dateTIme.second.toString());
                }),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                circleButton(
                  context,
                  icon: Icons.home,
                  color: Theme.of(context).buttonColor,
                  onTap: () => null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget circleButton(BuildContext context,
      {IconData icon, Color color, Function onTap}) {
    return GestureDetector(
      onTap: () => onTap != null ? onTap() : {},
      child: Container(
        height: 50,
        width: 50,
        decoration: new BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
          ),
        ),
        child: new Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget kostWidget() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) {
          return KostItem();
        },
      ),
    );
  }
}

// Widget appBarHome(BuildContext context) {
//   return Container(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Hi Fajar",
//                   style: TextStyle(
//                     color: Theme.of(context).backgroundColor,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "Where do you want to stay ?",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: SizedBox(),
//             ),
//             circleAvatarHome(),
//           ],
//         ),
//       ],
//     ),
//   );
// }

Widget circleAvatarHome() {
  return CircleAvatar(
    maxRadius: 30.0,
    child: Center(
      child: Text(
        'F',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
  );
}

// Widget bottomContainer() {
//   return DraggableScrollableSheet(
//     initialChildSize: 0.5,
//     minChildSize: 0.2,
//     maxChildSize: 0.5,
//     builder: (context, s) {
//       return Container(
//         decoration: BoxDecoration(
//           color: Theme.of(context).cardColor,
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(20),
//             topRight: Radius.circular(20),
//           ),
//         ),
//         height: MediaQuery.of(context).size.height * 0.5,
//         child: SingleChildScrollView(
//           controller: s,
//           child: Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.all(10),
//                 child: Column(
//                   children: [
//                     Center(
//                       child: Container(
//                         height: 8,
//                         width: 50,
//                         decoration: BoxDecoration(
//                           color: Theme.of(context).accentColor,
//                           borderRadius: BorderRadius.all(
//                             Radius.circular(20),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
