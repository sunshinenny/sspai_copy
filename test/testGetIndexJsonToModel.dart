import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sspai_copy/bean/index_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('my first unit test', () {
    var answer = 42;
    getHttp(
        "https://sspai.com/api/v1/article/matrix/page/get?limit=3&offset=0");

    expect(answer, 42);
  });
}
//void main() {
//  getHttp("https://sspai.com/api/v1/article/matrix/page/get?limit=3&offset=0");
//}

void getHttp(String url) async {
  try {
    Response response = await Dio().get(url);
    IndexEntity indexEntity = new IndexEntity.fromJson(response.data);
    print(indexEntity.error);
  } catch (e) {
    print(e);
  }
}
