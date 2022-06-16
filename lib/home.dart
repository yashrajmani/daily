import 'package:flutter/material.dart';
import 'package:news/components/newscard.dart';
import 'package:news/routes/headlines.dart';
import 'package:news/routes/newsdetail.dart';
import 'package:news/routes/info.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Newsly"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HeadLines()),
                    );

                  },
                  child: Text(
                    "HEADLINES",
                    style: TextStyle(fontSize: 30,
                    color: Colors.black),
                  )),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewsDetail()),
                    );

                  },
                  child: Text(
                    "NEWS DETAIL",
                    style: TextStyle(fontSize: 30,
                        color: Colors.black),
                  )),


              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Info()),
                    );

                  },
                  child: Text(
                    "WEATHER & INFO",
                    style: TextStyle(fontSize: 30,
                        color: Colors.black),
                  )),
            ],
          ),
        ));
  }
}
