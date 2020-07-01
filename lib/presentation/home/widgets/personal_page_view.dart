import 'package:flutter/material.dart';

class PersonalPageView extends StatefulWidget {
  final int selectedTab;

  PersonalPageView({Key key, @required this.selectedTab}) : super(key: key);

  @override
  _PersonalPageViewState createState() => _PersonalPageViewState();
}

class _PersonalPageViewState extends State<PersonalPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      body: Center(
        child: Text("PersonalPageView page " + widget.selectedTab.toString()),
      ),
    );
  }
}
