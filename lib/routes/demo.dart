import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("THIS IS DEMO",style: TextStyle(
        color: Colors.yellowAccent,
      ),),
    );
  }
}
