import 'package:flutter/material.dart';

class CollectionKost extends StatelessWidget {
  const CollectionKost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.yellow,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.yellow,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
