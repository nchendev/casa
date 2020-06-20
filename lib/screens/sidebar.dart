import 'package:flutter/material.dart';

import 'package:lowkey/screens/shop.dart';

// temporary constant lists until app works
final List homeModules = [
  {"title": "chores", "path": ""},
  {"title": "shared expenses", "path": ""}
];
final List selfModules = [
  {"title": "workout", "path": ""},
  {"title": "cardio", "path": ""}
];
final List friendsModules = [
  {"title": "leaderboards", "path": ""},
  {"title": "chat", "path": ""},
  {"title": "leaderboards", "path": ""},
  {"title": "chat", "path": ""}
];

class Sidebar extends StatefulWidget {
  final String title;
  final PageController pageController;
  Sidebar({Key key, @required this.title, @required this.pageController})
      : super(key: key);
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
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

  Widget _buildTile(
      {IconData icon, String tileTitle, GestureTapCallback onTap}) {
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
      onTap: onTap,
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

  Drawer _buildSidebar() {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text(
                    widget.title,
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
                // Self Widgets
                _buildExpansionTile(
                    icon: Icons.person,
                    tileTitle: "Self Modules",
                    modules: selfModules),

                // Friends Widgets
                _buildExpansionTile(
                    icon: Icons.people,
                    tileTitle: "Friends Modules",
                    modules: friendsModules),
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
                  tileTitle: 'Get more Modules!',
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Shop(),
                      ),
                    ),
                  }, // navigator routing
                ),
                _buildTile(
                  icon: Icons.info,
                  tileTitle: 'About',
                  onTap: () => {}, // navigator routing
                ),
                _buildTile(
                  icon: Icons.settings,
                  tileTitle: 'Settings!',
                  onTap: () => {}, // navigator routing
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildSidebar();
  }
}
