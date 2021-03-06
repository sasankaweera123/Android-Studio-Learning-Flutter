import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CODE ZONE'),
        ),
        body: Center(
          child: Text(
            "We are Learning Dart and Flutter",
            style: TextStyle(fontSize: 25.0,) ,
          ),
        ),
      ),
    );
  }
}
