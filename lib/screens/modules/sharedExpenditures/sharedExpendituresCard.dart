import 'package:flutter/material.dart';

class SharedExpendituresCard extends StatefulWidget {
  SharedExpendituresCard({Key key}) : super(key: key);
  @override
  _SharedExpendituresCardState createState() => _SharedExpendituresCardState();
}

class _SharedExpendituresCardState extends State<SharedExpendituresCard> {
  var _totalAmount = 120.23; // from state management later
  var _myCredit = 20.00;
  var _myDebt = 50.00;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: Text(
              "Outstanding Amount: \$" + _totalAmount.toStringAsFixed(2),
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
          Container(
              margin: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Credit: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                      Text("+\$" + _myCredit.toStringAsFixed(2),
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.green)),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Debt: ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                      Text("-\$" + _myDebt.toStringAsFixed(2),
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.red)),
                    ],
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.all(8.0),
            child: Text(
              "Next Dispersal Date: n/a",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
