import 'package:flutter/material.dart';
import 'package:lowkey/presentation/home/widgets/about_page_view.dart';
import 'package:lowkey/presentation/home/widgets/home_page_view.dart';
import 'package:lowkey/presentation/home/widgets/personal_page_view.dart';
import 'package:lowkey/presentation/home/widgets/settings_page_view.dart';
import 'package:lowkey/presentation/home/widgets/shop_page_view.dart';
import 'package:lowkey/presentation/home/widgets/social_page_view.dart';

// temporary constant lists until app works
final List homeModules = [
  {"title": "chores", "path": ""},
  {"title": "shared expenses", "path": ""}
];
final List personalModules = [
  {"title": "workout", "path": ""},
  {"title": "cardio", "path": ""}
];
final List socialModules = [
  {"title": "leaderboards", "path": ""},
  {"title": "chat", "path": ""},
  {"title": "leaderboards", "path": ""},
  {"title": "chat", "path": ""}
];

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _selectedPageviewIndex = 0;
  // shared variables
  String _title = "Home";
  List _titles = ["Home", "personal", "social"];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  // pageview body widget
  String _selectedBody = "main";
  Widget _buildBody() {
    switch (_selectedBody) {
      case "main":
        _pageController = PageController(initialPage: _selectedPageviewIndex);

        return PageView(
          controller: _pageController,
          children: <Widget>[
            HomePageView(
              selectedTab: _selectedPageviewIndex,
            ),
            PersonalPageView(
              selectedTab: _selectedPageviewIndex,
            ),
            SocialPageView(
              selectedTab: _selectedPageviewIndex,
            ),
          ],
          onPageChanged: (page) {
            setState(() {
              _selectedPageviewIndex = page;
              _title = _titles[_selectedPageviewIndex] as String;
            });
          },
        );
      case "Shop!":
        return ShopPageView();
      case "About":
        return AboutPageView();
      case "Settings":
        return SettingsPageView();
      default:
        return Center(
          child: Text("unexpected error"),
        );
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
      _title = _titles[_selectedPageviewIndex] as String;
    });
    if (_pageController.hasClients) {
      _pageController.animateToPage(
        value,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  List<Widget> _buildModules(List modules) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < modules.length; i++) {
      list.add(new ListTile(
        title: Text("temptitle"), //Text(modules[i]['title']), //TODO:fix titles
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
          centerTitle: true,
          title: Text(
            _title,
          ),
        ),
        body: _buildBody(),
        drawer: _buildDrawer(),
        bottomNavigationBar: _buildBottomNavigationBar());
  }
}
