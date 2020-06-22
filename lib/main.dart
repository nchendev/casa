import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:lowkey/screens/welcome.dart';
import 'package:lowkey/screens/social.dart';
import 'package:lowkey/screens/home.dart';
import 'package:lowkey/screens/personal.dart';
import 'package:lowkey/screens/sidebar.dart';
import 'package:lowkey/screens/shop.dart';
import 'package:lowkey/screens/about.dart';
import 'package:lowkey/screens/settings.dart';

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
  // shared variables
  String _title = "Home";
  List _titles = ["Home", "personal", "social"];

  // pageview body variables
  int _selectedPageviewIndex = 0;
  PageController _pageController = PageController();

  // misc screens body variables

  // pageview body widget
  String _selectedBody = "main";
  Widget _buildBody() {
    switch (_selectedBody) {
      case "main":
        _pageController = PageController(initialPage: _selectedPageviewIndex);

        return PageView(
          controller: _pageController,
          children: <Widget>[
            Home(
              selectedTab: _selectedPageviewIndex,
            ),
            personal(
              selectedTab: _selectedPageviewIndex,
            ),
            social(
              selectedTab: _selectedPageviewIndex,
            ),
          ],
          onPageChanged: (page) {
            setState(() {
              _selectedPageviewIndex = page;
              _title = _titles[_selectedPageviewIndex];
            });
          },
        );
      case "Shop!":
        return Shop();
      case "About":
        return About();
      case "Settings":
        return Settings();
    }
  }

  void _onTapBottomNavbar(int value) {
    setState(() {
      _selectedPageviewIndex = value;
    });
    setState(() {
      _selectedBody = "main";
    });
    setState(() {
      _title = _titles[_selectedPageviewIndex];
    });
    _pageController.jumpToPage(value);
  }

  List<Widget> _buildModules(List modules) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < modules.length; i++) {
      list.add(new ListTile(
        title: Text(modules[i]['title']),
        onTap: () {
          // change route to module[i].path
        },
      ));
    }
    return list;
  }

  Widget _buildTile({IconData icon, String tileTitle}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(tileTitle),
          )
        ],
      ),
      onTap: () {
        setState(() {
          _selectedBody = tileTitle;
          _title = tileTitle;
        });
        Navigator.pop(context);
      }, // navigator routi,
    );
  }

  ExpansionTile _buildExpansionTile(
      {IconData icon, String tileTitle, List modules}) {
    return ExpansionTile(
      title: Row(children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(tileTitle),
        )
      ]),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: _buildModules(modules),
            ),
          ),
        ),
      ],
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    "lowkey",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue[300],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                // Home Widgets
                _buildExpansionTile(
                    icon: Icons.home,
                    tileTitle: "Home Modules",
                    modules: homeModules),
                // personal Widgets
                _buildExpansionTile(
                    icon: Icons.person,
                    tileTitle: "personal Modules",
                    modules: personalModules),

                // social Widgets
                _buildExpansionTile(
                    icon: Icons.people,
                    tileTitle: "social Modules",
                    modules: socialModules),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                _buildTile(
                  icon: Icons.shopping_cart,
                  tileTitle: 'Shop!',
                ),
                _buildTile(
                  icon: Icons.info,
                  tileTitle: 'About',
                ),
                _buildTile(
                  icon: Icons.settings,
                  tileTitle: 'Settings',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('personal'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('social'),
        )
      ],
      onTap: _onTapBottomNavbar,
      currentIndex: _selectedPageviewIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: _buildBody(),
        drawer: _buildDrawer(),
        bottomNavigationBar: _buildBottomNavigationBar());
  }
}
