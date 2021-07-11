import 'package:flutter/material.dart';
import 'package:test10/networkRequest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Asynchronous Programming"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Asynchronous Programming", style: TextStyle(
              color: Colors.white, fontSize: 30,
            ),),
            RaisedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return NetworkRequest();
              }));
            },
              child: Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}
