// https://newsapi.org/v2/top-headlines?country=us&apiKey=8b2882f9af3d4676ba5d7b9c62b21817
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
class FetchNews{
  static List SourceId=[
    "abc-news",
    "abc-news-au",
    "afternposten",
    "al-jazeera-english",
    "ansa",
    "argaam",
    "ary-news",
    "australian-financial-review",
    "axios",
    "bbc-news",
    "bbc-sport",
    "bild",
    "bloomberg",
    "time",
    "ynet",
    "vice-news",
    "wired",
    "the-washington-post",
    "the-washington-times",
    "usa-today",
    "the-wall-street-journal",

  ];
  
  static fetchNews()async{
    final _random =new Random();

    var sourcesId;
    var sourceId=SourceId[_random.nextInt(sourcesId.lenght)];
    Response response = await get(Uri.parse("https://newsapi.org/v2/top-headlines?sources=sourceId&apiKey=8b2882f9af3d4676ba5d7b9c62b21817"));
    Map body_data= jsonDecode(response.body);
    print(body_data);
  }
}