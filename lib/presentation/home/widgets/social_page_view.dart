import 'package:flutter/material.dart';

class SocialPageView extends StatefulWidget {
  final int selectedTab;

  SocialPageView({Key key, @required this.selectedTab}) : super(key: key);

  @override
  _SocialPageViewState createState() => _SocialPageViewState();
}

class _SocialPageViewState extends State<SocialPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Text("SocialPageView page " + widget.selectedTab.toString()),
      ),
    );
  }
}
