import 'package:flutter/material.dart';


// 城市指示器
class CityIndexText extends StatefulWidget {
  @override
  _CityIndexTextState createState() {
    return new _CityIndexTextState();
  }
}

class _CityIndexTextState extends State<CityIndexText> {
  String _current = "上海";

  void updateCity(String city) {
    setState(() {
      this._current = city;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new RawMaterialButton(
        onPressed: () {
          // 跳转到选择城市页面,回传一个城市,调用updateCity方法更新城市
          Scaffold.of(context).showSnackBar(new SnackBar(
                content: new Text(_current),
              ));
        },
        child: new Text(_current));
  }
}

// 中间的搜索框
// TODO 目前先用文本框代替 
class SearchEditText extends StatefulWidget {
  SearchEditText({Key key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => new _ExampleWidgetState();
}

class _ExampleWidgetState extends State<SearchEditText> {
  
  @override
  Widget build(BuildContext context) {
    return new Text("search area");
  }
}
