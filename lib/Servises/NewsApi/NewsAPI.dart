import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

getNews() async {
  List<Map> LatestNews = [];
  var url = Uri.https('newsdata.io', 'api/1/news', {
    'apikey': 'pub_150398a66dcfefe306f5cdc6b21e0cafa53a5',
    "country": "us",
    "category": "technology"
  });
  var response = await http.get(url);
  var result = json.decode(response.body);

  if (response.statusCode == 200) {
    for (int i = 0; i < 5; i++)
      LatestNews.add({
        "title": "${result["results"][i]["title"]}",
        "Link": "${result["results"][i]["link"]}"
      });

    GetStorage().write("LatestNews", LatestNews);

  }
}
