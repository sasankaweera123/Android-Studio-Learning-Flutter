import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sasa'),
      ),
      body: Center(
        child: Container(
          // margin: EdgeInsets.all(20.0),
          // padding: EdgeInsets.only(top: 100.0,bottom: 50),
          // padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 50.0),
          // transform: Matrix4.rotationZ(0.4),
          height: 120.0,
          width: 200.0,
          alignment: Alignment.center,
          color: Color(0xff00ff72),
          child: Text('Weerakoon',
            style: TextStyle(
                fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}