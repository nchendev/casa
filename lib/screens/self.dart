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
      backgroundColor: Colors.orange[100],
      body: Center(
        child: Text("self page " + widget.selectedTab.toString()),
      ),
    );
  }
}
