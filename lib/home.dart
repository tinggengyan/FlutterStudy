import 'package:flutter/material.dart';
import 'package:helloflutter/home_titlebar.dart';

// This app is a stateful, it tracks the user's current choice.
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Column(
      children: <Widget>[
        new HomeTitleBar(),
        new Container(
          color: Colors.pink,
          child: new Text("content"),
        )
      ],
    ));
  }
}


