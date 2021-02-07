import 'package:flutter/material.dart';
import 'package:papi_kost/core/viewmodel/uiprovider/homeprovider.dart';
import 'package:provider/provider.dart';

class SearchWidgetHome extends StatefulWidget {
  @override
  _SearchWidgetHomeState createState() => _SearchWidgetHomeState();
}

class _SearchWidgetHomeState extends State<SearchWidgetHome> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    Provider.of<HomeProvider>(context, listen: false).changeHintText();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 10),
      height: 40,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black.withOpacity(0.09)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(Icons.search, size: 20, color: Colors.black54),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: TextField(
                controller: controller,
                textInputAction: TextInputAction.done,
                readOnly: true,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintText: Provider.of<HomeProvider>(context).hintTextRand,
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
}
