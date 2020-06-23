import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:lowkey/models/module.dart';
import 'package:lowkey/models/room.dart';
import 'package:lowkey/backend/local_api.dart';
import 'package:lowkey/util/stringmap.dart';

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

  // state declaration
  Future<List<Roommate>> _members;

  // state init
  @override
  void initState() {
    super.initState();
    _members = _buildRoomInfo();
  }

  // builds the header widget. Line that says "Roommates"
  Widget _buildRoommateCardHeader() {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Roommates',
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

  List _buildRoommatesList(AsyncSnapshot snapshot) {
    List<Widget> listItems = List();

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

  Widget _buildModulesList() {
    return Column(
      children: <Widget>[
        // list of modules cards
        Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              print('Card tapped.');
            },
            child: Container(
              width: 300,
              height: 100,
              child: Text('A card that can be tapped'),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // future builder generates slivers
      body: FutureBuilder<List<Roommate>>(
        future: _members,
        // once ^ returns value
        builder: (context, snapshot) {
          Widget roommatesSliver;

          // once data is received
          if (snapshot.data != null) {
            roommatesSliver = SliverList(
              delegate: SliverChildListDelegate(
                _buildRoommatesList(snapshot),
              ),
            );
          }

          // while data is not received
          else {
            roommatesSliver = SliverToBoxAdapter(
              child: CircularProgressIndicator(),
            );
          }

          // the actual view being built
          // TODO chain the future here when figuring out modules views
          // ie return FutureBuilder<List<Modules>>() and put return customscrollview in there
          return CustomScrollView(
            slivers: <Widget>[
              // roommates section header
              SliverToBoxAdapter(
                child: SizedBox(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text('Roommates',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w700)),
                      ),
                      Divider(),
                    ],
                  ),
                ),
              ),

              // roommates sliver. Lists out all the roommates
              roommatesSliver,

              // beginning of modules slivers
              SliverToBoxAdapter(
                child: SizedBox(
                  child: _buildModulesList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
