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
  Future<List<ModuleInfo>> _buildModuleInfosList(String type) async {
    List<ModuleInfo> typedModuleInfos = [];

    Map<String, dynamic> jsonData = await LocalAPI()
        .parseJsonFromAssets('assets/data/availablemodules.json');

    for (var moduledata in jsonData[type]) {
      ModuleInfo module = ModuleInfo.fromJson(moduledata);
      typedModuleInfos.add(module);
    }
    return typedModuleInfos;
  }

  Future<List<ModuleInfo>> _homeModuleInfos;
  Future<List<ModuleInfo>> _personalModuleInfos;
  Future<List<ModuleInfo>> _socialModuleInfos;

  @override
  void initState() {
    super.initState();
    _homeModuleInfos = _buildModuleInfosList("home");
    _personalModuleInfos = _buildModuleInfosList("personal");
    _socialModuleInfos = _buildModuleInfosList("social");
  }

  Widget _buildModuleInfo(String name, String description, String icon) {
    // determine icon
    var myIcons = StringMap().ModuleInfoIcons();

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
    Future<List<ModuleInfo>> _targetModuleInfos;
    switch (type) {
      case "home":
        _targetModuleInfos = _homeModuleInfos;
        break;
      case "personal":
        _targetModuleInfos = _personalModuleInfos;
        break;
      case "social":
        _targetModuleInfos = _socialModuleInfos;
        break;
    }
    return Container(
        child: Column(
      children: <Widget>[
        _buildSearchBar(type),
        FutureBuilder(
          future: _targetModuleInfos,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildModuleInfo(
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
