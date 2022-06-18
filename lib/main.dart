import 'package:flutter/material.dart';
import 'package:news/components/bottombar.dart';
import 'package:news/routes/headlines.dart';
import 'package:news/components/newsdetail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Colors.amberAccent,
      ),
      home: MainPage(),
    );
  }
}
