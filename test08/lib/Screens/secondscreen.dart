import 'package:flutter/material.dart';

import 'thirdscreen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Navigation',style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_){
                return ThirdScreen('SASA');
              }),
          );
          // Navigator.of(context).pushNamed('/third');
        },
        tooltip: 'Increment',
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
      ),
    );
  }
}

