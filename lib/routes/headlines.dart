import 'package:flutter/material.dart';
import 'package:news/components/newscard.dart';

class HeadLines extends StatefulWidget {
  const HeadLines({Key? key}) : super(key: key);

  @override
  State<HeadLines> createState() => _HeadLinesState();
}

class _HeadLinesState extends State<HeadLines> {
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
        child: Column(
          children: [
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
            NewsItem(),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Colors.white38,
            ),
          ],
        ),
      ),
    );
  }
}
