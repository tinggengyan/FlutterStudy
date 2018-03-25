import 'package:flutter/material.dart';

class HomeTitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      children: <Widget>[
        new CityIndexText(),
        new SearchEditText()
      ],
    );
  }
}

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

class SearchEditText extends StatefulWidget {
  SearchEditText({Key key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => new _ExampleWidgetState();
}

class _ExampleWidgetState extends State<SearchEditText> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new TextField(
      controller: _controller,
      decoration: new InputDecoration(
        hintText: 'Type something',
      ),
    );
  }
}
