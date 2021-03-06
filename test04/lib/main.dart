import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Transportation \n System'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          // flexibleSpace: Image.asset("assests/IMG_0184.JPG",
          //   fit: BoxFit.cover,
          // ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),text: 'Cars',),
              Tab(icon: Icon(Icons.directions_transit),text: 'Trains',),
              Tab(icon: Icon(Icons.directions_bike),text: 'Bikes',),
            ],
          ),
          elevation: 10.0,
          backgroundColor: Colors.deepOrange,
        ),
        body: TabBarView(
          children: [
            tab01(),
            tab02(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

Widget tab01()
{
  return Container(
    child: Center(
      child: Text("Tab First about Cars"),
    ),
  );
}

Widget tab02()
{
  return Container(
    child: Center(
      child: Text("Hello Trains Are Available"),
    ),
  );
}