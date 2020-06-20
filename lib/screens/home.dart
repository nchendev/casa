import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Home extends StatefulWidget {
  final int selectedTab;

  Home({Key key, @required this.selectedTab}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("home page" + widget.selectedTab.toString()),
    );
  }
}
