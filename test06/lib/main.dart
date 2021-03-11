import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,

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
        title: Text('SASANKA',
          style: TextStyle(color: Colors.black,
              fontSize: 35.0,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.green,
        height: 500,
        child: Row(

          children: <Widget>[
            Text('Weera',
              style: TextStyle(fontSize: 18.0
              ),
            ),
            Text('Weera',
              style: TextStyle(fontSize: 20.0
              ),
            ),
            Text('Weera',
              style: TextStyle(fontSize: 20.0
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text('Weera',
                  style: TextStyle(fontSize: 18.0
                  ),
                ),
                Text('Weerakoon',
                  style: TextStyle(fontSize: 20.0
                  ),
                ),
                Text('Weerakoon',
                  style: TextStyle(fontSize: 20.0
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
