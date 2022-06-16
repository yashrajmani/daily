import 'package:flutter/material.dart';

class weathercard extends StatelessWidget {
  weathercard({Key? key, required this.val, required this.title})
      : super(key: key);

  String val;
  String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        width: 110,
        height: 100,
        child: Card(
          color: Colors.lime,
          child: Column(
            children: [
              Text(
                val,
                style: TextStyle(color: Colors.blue, fontSize: 50),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
