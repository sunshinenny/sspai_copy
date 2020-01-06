import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'index_entity.g.dart';

@JsonSerializable()
class IndexEntity {
  IndexEntity();

  int error;
  String msg;
  List<IndexEntityData> data;
  int total;

  factory IndexEntity.fromJson(Map<String, dynamic> json) =>
      _$IndexEntityFromJson(json);

  Map<String, dynamic> toJson() => _$IndexEntityToJson(this);
}

@JsonSerializable()
class IndexEntityData {
  IndexEntityData();

  int id;
  String title;
  String banner;
  String summary;
  int comment_count;
  int like_count;
  int view_count;
  bool free;
  int post_type;
  int important;
  int released_time;
  List<dynamic> morning_paper_title;
  String advertisement_url;
  List<dynamic> series;
  IndexEntityAuthor author;
  IndexEntityCorner corner;
  List<dynamic> special_columns;
  int status;

  factory IndexEntityData.fromJson(Map<String, dynamic> json) =>
      _$IndexEntityDataFromJson(json);

  Map<String, dynamic> toJson() => _$IndexEntityDataToJson(this);
}

@JsonSerializable()
class IndexEntityCorner {
  IndexEntityCorner();

  int id;
  String name;
  String url;
  String icon;
  String memo;
  String color;

  factory IndexEntityCorner.fromJson(Map<String, dynamic> json) =>
      _$IndexEntityCornerFromJson(json);

  Map<String, dynamic> toJson() => _$IndexEntityCornerToJson(this);
}

@JsonSerializable()
class IndexEntityAuthor {
  IndexEntityAuthor();

  int id;
  String slug;
  String avatar;
  String nickname;

  factory IndexEntityAuthor.fromJson(Map<String, dynamic> json) =>
      _$IndexEntityAuthorFromJson(json);

  Map<String, dynamic> toJson() => _$IndexEntityAuthorToJson(this);
}
/*
{
    "error": 0,
    "msg": "",
    "data": [
        {
            "id": 58228,
            "title": "岁末盘点之2019年购买过的电子产品",
            "banner": "2020/01/02/069087243c67f7080783c4ccd5b748ec.jpg",
            "summary": "转眼已经来到了2020年，过去的2019年依然平淡无奇，最值得总结的也就是买过的这些电子产品了，希望新的一年可以不要再这么败家。群晖DS918+2017年4K设备开始大量普及，4K片源也越来越丰富，对 ...",
            "comment_count": 18,
            "like_count": 10,
            "view_count": 0,
            "free": true,
            "post_type": 1,
            "important": 1,
            "released_time": 1578019458,
            "morning_paper_title": [],
            "advertisement_url": "",
            "series": [],
            "author": {
                "id": 0,
                "slug": "ue2p600b",
                "avatar": "2019/12/20/a2620c4374f013b7a5c0b4d9ccb747cc.JPG",
                "nickname": "李数"
            },
            "corner": {
                "id": 0,
                "name": "",
                "url": "",
                "icon": "",
                "memo": "",
                "color": ""
            },
            "special_columns": [],
            "status": 0
        },
    ],
    "total": 3877
}
 */
