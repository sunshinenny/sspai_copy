import 'package:flutter/material.dart';
import 'package:sspai_copy/widgets/home_display_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("首页"),
        ),
        body: Center(
            child: Column(
          children: <Widget>[HomeDisplayCard()],
        )));
  }
}
