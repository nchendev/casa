import 'package:flutter/material.dart';

class SharedExpendituresScreen extends StatefulWidget {
  SharedExpendituresScreen({Key key}) : super(key: key);

  @override
  _SharedExpendituresScreenState createState() =>
      _SharedExpendituresScreenState();
}

class _SharedExpendituresScreenState extends State<SharedExpendituresScreen> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "moduleSelectionTag",
      child: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => {Navigator.pop(context)},
            ),
            centerTitle: true,
            title: Text("Shared Expenditures")),
        body: Card(
          elevation: 2,
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Text("SharedExpendituresScreen page "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
