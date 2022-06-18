import 'package:flutter/material.dart';
import 'package:news/routes/headlines.dart';
import 'package:news/routes/info.dart';
import 'package:news/components/newsdetail.dart';

import '../routes/demo.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int index = 0;

  final screen = [
    Info(),
    HeadLines(),
    Demo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily"),
        centerTitle: true,
      ),
      body: screen[index],
      bottomNavigationBar: Container(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  index = 0;
                });
              },
              icon: index == 0
                  ? const Icon(
                      Icons.cloud,
                      color: Colors.indigo,
                      size: 35,
                    )
                  : const Icon(
                      Icons.cloud_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: true,
              onPressed: () {
                setState(() {
                  index = 1;
                });
              },
              icon: index == 1
                  ? const Icon(
                      Icons.newspaper,
                      color: Colors.redAccent,
                      size: 35,
                    )
                  : const Icon(
                      Icons.newspaper_outlined,
                      color: Colors.black,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
              icon: index == 2
                  ? const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 35,
                    )
                  : const Icon(
                      Icons.check_circle_outline,
                      color: Colors.black,
                      size: 35,
                    ),
            ),

          ],
        ),
      ),
    );
  }
}
