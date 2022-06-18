import 'package:flutter/material.dart';
import 'package:news/components/newscard.dart';
import 'package:news/models/news_model.dart';
import 'package:news/services/news_api.dart';

class HeadLines extends StatefulWidget {
  const HeadLines({Key? key}) : super(key: key);

  @override
  State<HeadLines> createState() => _HeadLinesState();
}

class _HeadLinesState extends State<HeadLines> {
  NewsAPI client = NewsAPI();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: client.getNews(),
          builder: (BuildContext context, AsyncSnapshot<List<News>> snapshot) {
            if (snapshot.hasData) {
              List<News>? news = snapshot.data;
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: news?.length,
                itemBuilder: (context, index) => NewsCard(news![index],context),

              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
