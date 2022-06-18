import 'package:flutter/material.dart';
import 'package:news/components/newsdetail.dart';
import '../models/news_model.dart';

Widget NewsCard(News news, BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => NewsDetail(news: news)));
    },
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        elevation: 10,
        shadowColor: Colors.red,
        color: Colors.indigo,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10), // Image border
                    child: Image.network(news.urlToImage.toString(),
                        fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width * 0.4,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          news.title.toString(),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
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
                            style: TextStyle(color: Colors.lime, fontSize: 10),
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
                      Flexible(
                        child: Text(
                          news.description.toString(),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
