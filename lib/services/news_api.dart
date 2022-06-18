import 'dart:convert';
import 'package:http/http.dart';
import '../models/news_model.dart';

class NewsAPI {
  final endpoint = 'https://newsapi.org/v2/top-headlines?country=in&apiKey=130d9f030eeb4adab3493679dfd25a45';

  Future<List<News>> getNews() async {
    Response res = await get(Uri.parse(endpoint));
    if (res.statusCode == 200) {
      print("ALL OK FROM NEWS API");
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<News> news =
          body.map((dynamic item) => News.fromJson(item)).toList();
      return news;
    } else {
      print("BAD REQUEST @ NEWS API");
      throw ("NEWS API ERROR ");
    }
  }
}
