import 'package:flutter/material.dart';

class weathercard extends StatelessWidget {
  weathercard({Key? key, required this.val,required this.unit, required this.title})
      : super(key: key);

  String val;
  String title;
  String unit;

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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                val,
                style: TextStyle(color: Colors.black, fontSize: 32),
              ),
              Text(
                unit,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),

              Text(
                title,
                style: TextStyle(color: Colors.indigo, fontSize: 18,fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
