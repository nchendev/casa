import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:lowkey/models/module.dart';
import 'package:lowkey/models/room.dart';
import 'package:lowkey/backend/local_api.dart';
import 'package:lowkey/util/stringmap.dart';
import 'package:lowkey/util/modulemap.dart';

class Home extends StatefulWidget {
  final int selectedTab;

  Home({Key key, @required this.selectedTab}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // builds room info
  Future<List<Roommate>> _buildRoomInfo() async {
    List<Roommate> members = [];
    Map<String, dynamic> jsonData =
        await LocalAPI().parseJsonFromAssets('assets/data/roomdata.json');
    for (var member in jsonData['members']) {
      Roommate roommate = Roommate.fromJson(member);
      members.add(roommate);
    }

    return members;
  }

  // builds modules info
  Future<List<ModuleInfo>> _buildModulesInfo() async {
    List<ModuleInfo> modules = [];
    Map<String, dynamic> jsonData =
        await LocalAPI().parseJsonFromAssets('assets/data/roomdata.json');

    for (var module in jsonData['modules']) {
      ModuleInfo amodule = ModuleInfo.fromJson(module);
      modules.add(amodule);
    }
    return modules;
  }

  // state declaration
  Future<List<Roommate>> _members;
  Future<List<ModuleInfo>> _modules;
  // state init
  @override
  void initState() {
    super.initState();
    _members = _buildRoomInfo();
    _modules = _buildModulesInfo();
  }

  // builds the header widget. Line that says "Roommates"
  Widget _buildCardHeader(title) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w700)),
        ),
        Divider(),
      ],
    );
  }

  Widget _buildRoommateCard(name, locationStatus) {
    // determine color
    var myColors = StringMap().locationStatusColors();
    var myColor = myColors[locationStatus];

    return ListTile(
      title: Text(name, style: TextStyle(fontWeight: FontWeight.w500)),
      subtitle: Text(locationStatus,
          style: TextStyle(fontWeight: FontWeight.w500, color: myColor)),
      leading: Icon(
        Icons.person,
        color: Colors.blue[500],
      ),
      trailing: Icon(Icons.room, color: myColor),
    );
  }

  List<Widget> _buildRoommatesList(AsyncSnapshot snapshot) {
    List<Widget> listItems = List();
    listItems.add(_buildCardHeader("Roommates"));
    for (int i = 0; i < snapshot.data.length; i++) {
      listItems.add(
        _buildRoommateCard(
          snapshot.data[i].name,
          snapshot.data[i].locationStatus,
        ),
      );
    }

    return listItems;
  }

  Widget _buildModuleContent(moduleId) {
    return ModuleMap().map()[moduleId + "Card"];
  }

  Widget _buildModuleCard(moduleId, moduleName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return ModuleMap().map()[moduleId + "Screen"];
        }));
      },
      child: Hero(
        tag: "moduleSelectionTag",
        child: Card(
          elevation: 2,
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              _buildCardHeader(moduleName),
              _buildModuleContent(moduleId),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildModulesList(AsyncSnapshot snapshot) {
    List<Widget> listItems = List();
    for (int i = 0; i < snapshot.data.length; i++) {
      listItems.add(
        _buildModuleCard(snapshot.data[i].id, snapshot.data[i].name),
      );
    }

    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      // future builder generates slivers
      body: FutureBuilder<List<Roommate>>(
        future: _members,
        // once ^ returns value
        builder: (context, snapshot) {
          Widget roommatesSliver;

          // once data is received
          if (snapshot.data != null) {
            roommatesSliver = SliverList(
              delegate: SliverChildListDelegate([
                Card(
                  margin: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      ..._buildRoommatesList(snapshot),
                    ],
                  ),
                )
              ]),
            );
          }

          // while data is not received
          else {
            roommatesSliver = SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }

          // chain the futurebuilder for list of modules
          return FutureBuilder<List<ModuleInfo>>(
            future: _modules,
            // once ^ returns value
            builder: (context, snapshot) {
              Widget modulesSliver;

              // once data is received
              if (snapshot.data != null) {
                modulesSliver = SliverList(
                  delegate:
                      SliverChildListDelegate(_buildModulesList(snapshot)),
                );
              }

              // while data is not received
              else {
                modulesSliver = SliverToBoxAdapter(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              // generate the actual view
              return CustomScrollView(
                slivers: <Widget>[
                  // roommates sliver.
                  roommatesSliver,

                  // beginning of modules slivers
                  modulesSliver
                ],
              );
            },
          );
        },
      ),
    );
  }
}
