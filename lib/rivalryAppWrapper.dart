import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RivalryAppWrapper extends StatefulWidget {

  final Widget body;
  final String appTitle;

  const RivalryAppWrapper({@required this.body, @required this.appTitle});

  @override
  State<StatefulWidget> createState() {
    return new RivalryWrapperState(this.body, this.appTitle);
  }

}

class RivalryWrapperState extends State<RivalryAppWrapper> {
  Widget _body;
  String _appTitle;

  RivalryWrapperState(Widget body, String appTitle) {
    this._body = body;
    this._appTitle = appTitle;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_appTitle),
      ),
      body: this._body,
    );
  }

}