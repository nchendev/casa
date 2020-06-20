import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  BottomNavbar({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  BottomNavigationBar _buildBottomNavbar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Self'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('Friends'),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBottomNavbar();
  }
}
