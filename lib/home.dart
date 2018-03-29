import 'package:flutter/material.dart';

// This app is a stateful, it tracks the user's current choice.
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new _HomeContent();
  }
}

class _HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        // 横向沾满空间
        new Expanded(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Container(
              color: Colors.blue,
              child: new Text(
                "content1",
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // 沾满剩余空间
            new Expanded(
                child: new Container(
              decoration: new BoxDecoration(color: Colors.red),
              child: new Text(
                "content2",
                style: new TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
          ],
        ))
      ],
    );
  }
}
