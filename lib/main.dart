import 'package:flutter/material.dart';
import 'package:helloflutter/home.dart';
import 'package:helloflutter/home_titlebar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          leading: new CityIndexText(),
          title: new SearchEditText(),
        ),
        body: new HomePage(),
      ),
    );
  }
}
