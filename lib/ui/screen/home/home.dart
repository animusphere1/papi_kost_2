import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/onboardprovider.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: _appBar(),
            expandedHeight: MediaQuery.of(context).size.height * 0.11,
            backgroundColor: Theme.of(context).accentColor,
          ),
        ],
      ),
    );
  }

  //AppBar
  Widget _appBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SearchWidgetHome(),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconStackLove(context),
                  iconStackLove(context),
                  iconStackLove(context),
                ],
              ),
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
            width: 2,
            color: Theme.of(context).buttonColor,
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
