import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:papi_kost/ui/constant/constantwidget.dart';
import 'package:papi_kost/ui/screen/home/widget/widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          children: [
            appBarHome(context),
            dividerTranstparant,
            kostWidget(),
          ],
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
          print(i);
          if (i == 4) {
            return KostItem(
              nama: 'fajar',
            );
          }
          return KostItem();
        },
      ),
    );
  }

  Widget appBarHome(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.cloud_upload,
                  size: 25,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '17 \u00B0 C ',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                circleButton(
                  icon: Icons.home,
                  color: Theme.of(context).accentColor,
                  onTap: null,
                ),
                SizedBox(
                  width: 10,
                ),
                profilePicture(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget profilePicture() {
    return ClipOval(
      child: Image.network(
        'https://uploads.disquscdn.com/images/dc368ebd907dfb3c40406ed0c842b10023f20651969cbd4bf77e524b3bf29ce7.jp',
        width: 40,
        height: 40,
        fit: BoxFit.cover,
        errorBuilder: (context, exception, stackTrace) {
          return Text('Your error widget...');
        },
        loadingBuilder: (context, child, loadingProgress) {
          print(loadingProgress);
          if (loadingProgress == null) {
            return child;
          }
          return ClipOval(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget circleButton({IconData icon, Color color, Function onTap}) {
    return Container(
      width: 40,
      height: 40,
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
    );
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

  // Widget circleAvatarHome() {
  //   return Expanded(
  //     child: CircleAvatar(
  //       maxRadius: 30.0,
  //       child: Center(
  //         child: Text(
  //           'F',
  //           style: TextStyle(
  //             fontSize: 25,
  //             fontWeight: FontWeight.w900,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

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
}
