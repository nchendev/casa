import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:lowkey/backend/local_api.dart';
import 'package:lowkey/models/modules.dart';
import 'package:lowkey/screens/sidebar.dart';

class Shop extends StatefulWidget {
  Shop({Key key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<ShopModule> _homeShopModules = [];
  List<ShopModule> _personalShopModules = [];
  List<ShopModule> _socialShopModules = [];

  @override
  void initState() {
    super.initState();
  }

  Future<List<ShopModule>> _buildShopModulesList(String type) async {
    Map<String, dynamic> jsonData = await LocalAPI()
        .parseJsonFromAssets('assets/data/availablemodules.json');

    for (var moduledata in jsonData[type]) {
      ShopModule module = ShopModule(
          moduledata['name'], moduledata['description'], moduledata['icon']);
      switch (type) {
        case "home":
          _homeShopModules.add(module);
          print("added to home");
          break;
        case "personal":
          _personalShopModules.add(module);
          print("added to personal");
          break;
        case "social":
          _socialShopModules.add(module);
          print("added to social");
          break;
      }
    }
    switch (type) {
      case "home":
        return _homeShopModules;
      case "personal":
        return _personalShopModules;
      case "social":
        return _socialShopModules;
    }
  }

  Widget _buildShopModule(String name, String description, String icon) {
    // determine icon
    const myIcons = <String, IconData>{
      'report_problem': Icons.report_problem,
    };

    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(myIcons[icon]),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(name),
          )
        ],
      ),
    );
  }

  Widget _buildSearchBar(String type) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: new Icon(Icons.search),
        hintText: "Search for " + type + " widgets",
      ),
    );
  }

  Widget _buildTabBarView(String type) {
    return Container(
        child: Column(
      children: <Widget>[
        _buildSearchBar(type),
        FutureBuilder(
          future: _buildShopModulesList(type),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildShopModule(
                        snapshot.data[index].name,
                        snapshot.data[index].description,
                        snapshot.data[index].icon);
                  },
                ),
              );
            } else {
              return Container(
                child: Text("empty"),
              );
            }
          },
        )
      ],
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: TabBar(
            tabs: [
              Tab(text: "home"),
              Tab(text: "personal"),
              Tab(text: "social"),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              _buildTabBarView("home"),
              _buildTabBarView("personal"),
              _buildTabBarView("social"),
            ],
          ),
        ),
      ),
    );
  }
}
