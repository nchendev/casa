import 'package:flutter/material.dart';

class Self extends StatefulWidget {
  int selectedTab;

  Self({Key key, @required this.selectedTab}) : super(key: key);

  @override
  _SelfState createState() => _SelfState();
}

class _SelfState extends State<Self> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("self page" + widget.selectedTab.toString()),
    );
  }
}
