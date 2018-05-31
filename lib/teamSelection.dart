import 'package:flutter/material.dart';

class TeamSelection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new TeamSelectionState();
  }
}

class TeamSelectionState extends State<TeamSelection> {

  Map<String, bool> _checkBoxValues = {
    'University of Utah': false,
    'BYU': false
  };

  @override
  Widget build(BuildContext context) {
    /* CHECKBOX NOT WORKING WHEN CALLED FROM THE WRAPPER - FIND OUT WHY?
    return new RivalryAppWrapper(
      appTitle: "why??",
      body: new ListView(
        children: <Widget>[
          getRow("University of Utah"),
        ],
      ),
    );
  */

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Some new title"),
      ),
      body: new ListView(
        children: _checkBoxValues.keys.map((String key) {
          return new CheckboxListTile(
            title: new Text(key),
            value: _checkBoxValues[key],
            onChanged: (bool value) {
              setState(() {
                _checkBoxValues[key] = value;
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
