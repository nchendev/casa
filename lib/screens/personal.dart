import 'package:flutter/material.dart';

class personal extends StatefulWidget {
  int selectedTab;

  personal({Key key, @required this.selectedTab}) : super(key: key);

  @override
  _personalState createState() => _personalState();
}

class _personalState extends State<personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Center(
        child: Text("personal page " + widget.selectedTab.toString()),
      ),
    );
  }
}
