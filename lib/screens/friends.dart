import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  final int selectedTab;

  Friends({Key key, @required this.selectedTab}) : super(key: key);

  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("friends page" + widget.selectedTab.toString()),
    );
  }
}
