import 'package:flutter/material.dart';

import 'secondscreen.dart';

class ThirdScreen extends StatelessWidget {
  String t;
  ThirdScreen(String t)
  {
    this.t=t;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
            Navigator.pop(context,MyHomePage());
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This is Third Screen',style: TextStyle(fontSize: 30.0),),
          ],
        ),
      ),
    );
  }
}
