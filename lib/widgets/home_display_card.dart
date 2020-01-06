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
              ButtomInfo()
            ],
            direction: Axis.vertical,
          ),
        ],
      ),
    );
  }
}

/// 用户头像、用户名和操作项
class IconNameAndOptions extends StatelessWidget {
  const IconNameAndOptions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8,
          children: <Widget>[
            GestureDetector(
              child: ClipOval(
                  child: Image.asset(
                "assets/images/myLogo.jpg",
                width: 40,
              )),
              onTap: () => {print("Show User Home Page")},
            ),
            Text(
              "SunShinenny",
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: <Widget>[
            GestureDetector(
              child: Text(
                "···",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.black26,
                ),
              ),
              onTap: () {
                print("Show Options");
              },
            ),
          ],
        )
      ],
    );
  }
}

/// 文章标题以及文章简介部分
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

/// 从少数派读取的图片
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

/// 底部点赞等信息展示栏
class ButtomInfo extends StatelessWidget {
  const ButtomInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          Row(
            children: <Widget>[
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                // 纵向对齐方式
                spacing: 8,
                children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey[400],
                    size: 15,
                  ),
                  Text(
                    "13 · 20 评论",
                    style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            children: <Widget>[
              Icon(Icons.sync, color: Colors.grey[500], size: 15),
              Text(
                " 17 小时前推荐",
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              )
            ],
          )
        ],
      ),
    );
  }
}
