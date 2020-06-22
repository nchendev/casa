import 'package:flutter/material.dart';

class social extends StatefulWidget {
  final int selectedTab;

  social({Key key, @required this.selectedTab}) : super(key: key);

  @override
  _socialState createState() => _socialState();
}

class _socialState extends State<social> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Text("social page " + widget.selectedTab.toString()),
      ),
    );
  }
}
