import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:lowkey/backend/local_api.dart';
import 'package:lowkey/models/module.dart';
import 'package:lowkey/screens/sidebar.dart';
import 'package:lowkey/util/stringmap.dart';

class Shop extends StatefulWidget {
  Shop({Key key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  Future<List<Module>> _buildModulesList(String type) async {
    List<Module> typedModules = [];

    Map<String, dynamic> jsonData = await LocalAPI()
        .parseJsonFromAssets('assets/data/availablemodules.json');

    for (var moduledata in jsonData[type]) {
      Module module = Module.fromJson(moduledata);
      typedModules.add(module);
    }
    return typedModules;
  }

  Future<List<Module>> _homeModules;
  Future<List<Module>> _personalModules;
  Future<List<Module>> _socialModules;

  @override
  void initState() {
    super.initState();
    _homeModules = _buildModulesList("home");
    _personalModules = _buildModulesList("personal");
    _socialModules = _buildModulesList("social");
  }

  Widget _buildModule(String name, String description, String icon) {
    // determine icon
    var myIcons = StringMap().ModuleIcons();

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
    Future<List<Module>> _targetModules;
    switch (type) {
      case "home":
        _targetModules = _homeModules;
        break;
      case "personal":
        _targetModules = _personalModules;
        break;
      case "social":
        _targetModules = _socialModules;
        break;
    }
    return Container(
        child: Column(
      children: <Widget>[
        _buildSearchBar(type),
        FutureBuilder(
          future: _targetModules,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildModule(
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
