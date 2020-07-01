import 'package:flutter/material.dart';

class ShopPageView extends StatefulWidget {
  ShopPageView({Key key}) : super(key: key);

  @override
  _ShopPageViewState createState() => _ShopPageViewState();
}

class _ShopPageViewState extends State<ShopPageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("shop page"),
      ),
    );
  }
}
