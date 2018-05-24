import 'package:flutter/material.dart';
import 'package:rivalry_week/rivalryAppWrapper.dart';

class TeamSelection extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new TeamSelectionState();
  }
}

class TeamSelectionState extends State<TeamSelection> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return new RivalryAppWrapper(
      appTitle: "why??",
      body: new ListView(
        children: <Widget>[
          getRow("University of Utah"),
        ],
      ),
    );
  }

  Row getRow(String label) {
    return new Row(children: <Widget>[
      new Checkbox(
          value: checkboxValue,
          onChanged: (bool value) {
            setState(() {
              checkboxValue = value;
            });
          }),
      new Text(label)
    ]
    );
  }
}