import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  final int selectedTab;
  HomePageView({Key key, @required this.selectedTab}) : super(key: key);

  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Text("HomePageView page " + widget.selectedTab.toString()),
      ),
    );
  }
}
