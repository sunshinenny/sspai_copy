import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sspai_copy/bean/index_entity.dart';
import 'package:sspai_copy/widgets/home_display_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<IndexEntity> indexEntityFuture;

  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    print("Begin initState");
    indexEntityFuture = getHttp(
        "https://sspai.com/api/v1/article/matrix/page/get?limit=30&offset=0");
    print("End initState");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: indexEntityFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data.length, // indexEntity.data.length
              itemBuilder: (BuildContext context, int index) {
                return HomeDisplayCard();
              });
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner.
        return CircularProgressIndicator();
      },
    );
  }
}

Future<IndexEntity> getHttp(String url) async {
  try {
    Response response = await Dio().get(url);
    IndexEntity indexEntity = new IndexEntity.fromJson(response.data);
    print("Init State");
    //    print(indexEntity.data[0].toJson());
    return indexEntity;
  } catch (e) {
    print(e + "错误");
  }
}
