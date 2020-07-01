import 'package:flutter/material.dart';

class AboutPageView extends StatefulWidget {
  AboutPageView({Key key}) : super(key: key);

  @override
  _AboutPageViewState createState() => _AboutPageViewState();
}

class _AboutPageViewState extends State<AboutPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("about page"),
      ),
    );
  }
}
