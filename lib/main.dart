import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:lowkey/screens/welcome.dart';
import 'package:lowkey/screens/friends.dart';
import 'package:lowkey/screens/home.dart';
import 'package:lowkey/screens/self.dart';
import 'package:lowkey/widgets/sidebar.dart';
import 'package:lowkey/widgets/bottomNavbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue[300]),
      //home: Welcome(),
      home: Router(),
    );
  }
}

class Router extends StatefulWidget {
  @override
  _RouterState createState() => _RouterState();
}

class _RouterState extends State<Router> {
  int _selectedIndex = 0;
  List _title = ["Home", "Self", "Friends"];
  final PageController _pageController = PageController();

  void _onTapBottomNavbar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title[_selectedIndex]),
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Home(
            selectedTab: _selectedIndex,
          ),
          Self(
            selectedTab: _selectedIndex,
          ),
          Friends(
            selectedTab: _selectedIndex,
          ),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      drawer: Sidebar(),
      bottomNavigationBar: BottomNavigationBar(
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
        onTap: _onTapBottomNavbar,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
