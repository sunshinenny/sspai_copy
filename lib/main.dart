import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '少数派',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Skeleton(),
    );
  }
}

/// 页面骨架
class Skeleton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SkeletonState();
}

class SkeletonState extends State<Skeleton> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        actions: <Widget>[
          GestureDetector(
            child: Icon(Icons.search),
            onTap: () => {print("Show Search Input")},
          )
        ],
      ),
      body: HomePage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.art_track,
                color: Colors.black87,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.lightbulb_outline,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 30,
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
      //      bottomNavigationBar: BottomNavigationBar(
      //        // 底部导航
      //        items: <BottomNavigationBarItem>[
      //          BottomNavigationBarItem(
      //              icon: Icon(Icons.art_track), title: Text('Home')),
      //          BottomNavigationBarItem(
      //              icon: Icon(Icons.lightbulb_outline), title: Text('More')),
      //          BottomNavigationBarItem(
      //              icon: Icon(Icons.supervised_user_circle), title: Text('Me')),
      //        ],
      //        currentIndex: _selectedIndex,
      //        fixedColor: Colors.blue,
      //        onTap: _onItemTapped,
      //      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
