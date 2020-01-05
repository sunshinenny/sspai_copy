import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeDisplayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 定义四周间距
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
      child: Column(
        children: <Widget>[
          Flex(
            children: <Widget>[
              IconNameAndOptions(),
              ImageFromSspai(),
              TextTitleAndBody(),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FlatButton.icon(
                          onPressed: () {},
                          label: Text(
                            "13",
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[600]),
                          ),
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.grey[600],
                            size: 16,
                          ),
                          padding: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: <Widget>[Text("")],
                    ),
                  )
                ],
              )
            ],
            direction: Axis.vertical,
          ),
        ],
      ),
    );
  }
}

class ImageFromSspai extends StatelessWidget {
  const ImageFromSspai({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6.0),
        child: Image.network(
          //                    "https://cdn.sspai.com/article/55806f27-a137-0fb3-1248-0bffd08a773c.jpg?imageMogr2/quality/95/thumbnail/!456x456r/gravity/Center/crop/456x456/interlace/1",
          "https://cdn.sspai.com/article/ba5d6cb3-b338-25b6-5bcc-5223803696d9.jpg?imageMogr2/quality/95/thumbnail/!1200x400r/gravity/Center/crop/1200x400/interlace/1",
        ),
      ),
    );
  }
}

class IconNameAndOptions extends StatelessWidget {
  const IconNameAndOptions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 10,
          child: Row(
            children: <Widget>[
              ClipOval(
                  child: Image.asset(
                "assets/images/myLogo.jpg",
                width: 44,
              )),
              Text(
                "  SunShinenny",
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
            padding: EdgeInsets.all(0),
            child: Text(
              "...",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.black26,
              ),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}

class TextTitleAndBody extends StatelessWidget {
  const TextTitleAndBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "具透 | 三星最快的一次系统升级，One UI 2 正式版都有这些亮点",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        Text(
          "作为 One UI 的第一次大版本迭代，One UI 2 的更新内容的确诚意满满，加之此次国行设备更新速度之快也让国内的三星用户倍感欣慰。",
          maxLines: 2,
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
      ],
    );
  }
}

class HomeImageRectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(0, 0, 200, 200.0);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
