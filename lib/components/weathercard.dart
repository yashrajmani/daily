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
        width: MediaQuery.of(context).size.width*0.3,
        height: MediaQuery.of(context).size.width*0.3,

        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          color: Colors.amberAccent,
          shadowColor: Colors.red,
          elevation: 8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                val,
                style: TextStyle(color: Colors.black, fontSize: 46),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.indigo, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
