import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:lowkey/backend/local_api.dart';
import 'package:lowkey/models/module.dart';
import 'package:lowkey/screens/sidebar.dart';

class Shop extends StatefulWidget {
  Shop({Key key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  Future<List<ShopModule>> _buildShopModulesList(String type) async {
    List<ShopModule> typedShopModules = [];

    Map<String, dynamic> jsonData = await LocalAPI()
        .parseJsonFromAssets('assets/data/availablemodules.json');

    for (var moduledata in jsonData[type]) {
      ShopModule module = ShopModule.fromJson(moduledata);
      typedShopModules.add(module);
    }
    return typedShopModules;
  }

  Future<List<ShopModule>> _homeShopModules;
  Future<List<ShopModule>> _personalShopModules;
  Future<List<ShopModule>> _socialShopModules;

  @override
  void initState() {
    super.initState();
    _homeShopModules = _buildShopModulesList("home");
    _personalShopModules = _buildShopModulesList("personal");
    _socialShopModules = _buildShopModulesList("social");
  }

  Widget _buildShopModule(String name, String description, String icon) {
    // determine icon
    const myIcons = <String, IconData>{
      'report_problem': Icons.report_problem,
    };

    return ListTile(
      leading: Icon(myIcons[icon]),
      title: Text(name),
      subtitle: Text(description),
      trailing: RaisedButton(
        onPressed: () {},
        child: Text('install'),
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
    Future<List<ShopModule>> _targetShopModules;
    switch (type) {
      case "home":
        _targetShopModules = _homeShopModules;
        break;
      case "personal":
        _targetShopModules = _personalShopModules;
        break;
      case "social":
        _targetShopModules = _socialShopModules;
        break;
    }
    return Container(
        child: Column(
      children: <Widget>[
        _buildSearchBar(type),
        FutureBuilder(
          future: _targetShopModules,
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
