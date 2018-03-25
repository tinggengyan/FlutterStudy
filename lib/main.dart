import 'package:flutter/material.dart';
import 'package:helloflutter/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(),
        body: new HomePage(),
      ),
    );
  }
}
