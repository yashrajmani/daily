import 'package:flutter/material.dart';
import 'package:news/components/newscard.dart';
import '../models/news_model.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetail extends StatelessWidget {
  final News news;
  NewsDetail({required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Newsly"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.height * 1.5,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: Image.network(
                        news.urlToImage.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              news.title.toString(),
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 2, bottom: 2),
                              child: Text(
                                news.author.toString(),
                                style:
                                    TextStyle(color: Colors.red, fontSize: 14),
                              ),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.orange,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Divider(
                            thickness: 1,
                            color: Colors.indigo,
                            endIndent: 30,
                            indent: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              news.description.toString(),
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.indigo,
                            endIndent: 30,
                            indent: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              news.content.toString(),
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.indigo,
                            endIndent: 100,
                            indent: 100,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Read Full Article At:",
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                    color: Colors.indigo,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () =>
                                    launchUrl(Uri.parse(news.url.toString())),
                                child: Text(
                                      news.url.toString(),
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blueAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.indigo,
                            endIndent: 100,
                            indent: 100,
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Published At : " + news.publishedAt.toString(),
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
