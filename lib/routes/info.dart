import 'package:flutter/material.dart';
import 'package:news/components/newscard.dart';

class Info extends StatefulWidget {
  const Info({
    Key? key,
  }) : super(key: key);

  @override
  State<Info> createState() => _Info();
}

class _Info extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Newsly"),
        centerTitle: true,
      ),
      body: Container(
        



      ),
    );
  }
}
