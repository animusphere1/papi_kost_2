import 'package:flutter/material.dart';
import 'package:papi_kost/ui/router/routergenerator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();

  bool haveNotif = false;
  String activeList = 'Location';

  @override
  initState() {
    super.initState();
    _scrollController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBarHome(),
              SizedBox(
                height: 10,
              ),
              listCatergory(),
            ],
          ),
        ),
      ),
    );
  }

  Widget appBarHome() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: searchWidget(),
          ),
          SizedBox(width: 10),
          listIcon(),
        ],
      ),
    );
  }

  Widget listIcon() {
    return Container(
      child: Row(
        children: [
          iconHome(Icons.favorite_border_rounded, function: null),
          SizedBox(
            width: 10,
          ),
          iconHome(
            haveNotif
                ? Icons.notifications_active_rounded
                : Icons.notifications_none,
            function: null,
          ),
          SizedBox(width: 10),
          iconHome(Icons.account_circle_rounded, function: null),
        ],
      ),
    );
  }

  Widget iconHome(IconData icon, {Function(bool) function}) {
    return GestureDetector(
      onTap: () {
        function != null ? function(haveNotif) : print('belom ada function');
      },
      child: Icon(
        icon,
        color: Theme.of(context).buttonColor,
      ),
    );
  }

  Widget searchWidget() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.grey.withOpacity(0.4),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.search),
            SizedBox(width: 5),
            Expanded(
              child: TextField(
                readOnly: true,
                onTap: null,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintText: 'Cari Kost ?',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> _list = ['Location', 'Food', 'Tradition', 'Hotels'];

  Widget listCatergory() {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: _list
            .map(
              (e) => GestureDetector(
                onTap: () => changePriorityList(e),
                child: Container(
                  child: Text(
                    e,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: activeList == e
                          ? Theme.of(context).buttonColor
                          : Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  void changePriorityList(String e) {
    setState(() {
      activeList = e;
    });
  }
}
