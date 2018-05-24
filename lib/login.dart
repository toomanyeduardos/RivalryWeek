import 'package:flutter/material.dart';
import 'package:rivalry_week/rivalryAppWrapper.dart';
import 'package:flutter/foundation.dart';

class Login extends StatefulWidget {
  final String appTitle;

  const Login({@required this.appTitle});

  @override
  State<StatefulWidget> createState() {
    return new LoginState(appTitle);
  }
}

class LoginState extends State<Login> {
  String _appTitle;

  LoginState(String appTitle) {
    this._appTitle = appTitle;
  }


  TextFormField buildTextFormField(String label) {
    return new TextFormField(
      decoration: new InputDecoration(
          labelText: label
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new RivalryAppWrapper(
      appTitle: _appTitle,
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                buildTextFormField("Enter your username"),
                buildTextFormField("Enter your password"),
                new ButtonTheme(
                  minWidth: 44.0,
                  padding: new EdgeInsets.all(10.0),
                  child: new ButtonBar(children: <Widget>[
                    new RaisedButton(
                        onPressed: () {
                          print("Guest login button pressed!");
                        },
                        child: const Text("Continue as a guest"),
                        color: Colors.lightBlueAccent
                    ),
                    new RaisedButton(
                        onPressed: () {
                          print("Sign in button pressed!");
                        },
                        child: const Text("Sign in!"),
                        color: Colors.lightBlueAccent
                    )
                  ],
                  ),
                ),
              ],
            ),
          )
        ]
      ),
    );
  }

}