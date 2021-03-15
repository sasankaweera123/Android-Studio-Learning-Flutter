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
      builder: DevicePreview.appBuilder, // Add the builder here
      title: 'Flutter List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  var items = List<String>.generate(100, (index)=>'Item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          centerTitle: true,
          title: Text('Flutter List',
            style: TextStyle(fontSize: 32),
          ),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(items[index]),
            );
          },
      ),
      // body: Container(
      //   height: 100,
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     children: [
            // ListTile(
            //   leading: Icon(Icons.brightness_4_sharp,color: Colors.white,),
            //   title: Text('Brightness Auto'),
            //   subtitle: Text('Change the Brightness'),
            //   trailing: Icon(Icons.menu,color: Colors.white,),
            //   onTap: (){},
            // ),
            // Divider(),
            // ListTile(
            //   leading: Icon(Icons.image,color: Colors.white,),
            //   title: Text('Change Image'),
            //   subtitle: Text('Change the Image'),
            //   trailing: Icon(Icons.menu,color: Colors.white,),
            //   onTap: (){},
            // ),
            // Divider(),
            // ListTile(
            //   leading: Icon(Icons.keyboard,color: Colors.white,),
            //   title: Text('Keyboard Layout'),
            //   subtitle: Text('Change the Keyboard Layout'),
            //   trailing: Icon(Icons.menu,color: Colors.white,),
            //   onTap: (){},
            // ),
            // Divider(),
            // ListTile(
            //   leading: Icon(Icons.ac_unit,color: Colors.white,),
            //   title: Text('Ring Option'),
            //   subtitle: Text('Change the Ring Option'),
            //   trailing: Icon(Icons.menu,color: Colors.white,),
            //   onTap: (){},
            // ),
            // Divider(),
            // ListTile(
            //   leading: Icon(Icons.settings,color: Colors.white,),
            //   title: Text('Settings'),
            //   subtitle: Text('Change Settings'),
            //   trailing: Icon(Icons.menu,color: Colors.white,),
            //   onTap: (){},
            // ),
            // Divider(),
            // ListTile(
            //   leading: Icon(Icons.location_on,color: Colors.white,),
            //   title: Text('Near'),
            // ),
            // Divider(),
            // ListTile(
            //   leading: Icon(Icons.backup,color: Colors.white,),
            //   title: Text('Backups'),
            // ),

        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.pink,
        //     ),
        //     Container(
        //       width: 200,
        //       height: 300,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       width: 300,
        //       height: 300,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 200,
        //       color: Color(0xFFE46BFF),
        //     ),
        //     Container(
        //       width: 100,
        //       height: 400,
        //       color: Color(0xFFFFA300),
        //     ),
        //   ],
        // ),
      // ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text('List View',
      //       style: Theme.of(context).textTheme.display1,
      //       ),
      //       Container(
      //         height: 200,
      //         color: Colors.blue,
      //       ),
      //       Container(
      //         height: 350,
      //         color: Colors.green,
      //       ),
      //       Container(
      //         height: 150,
      //         color: Colors.pink,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

