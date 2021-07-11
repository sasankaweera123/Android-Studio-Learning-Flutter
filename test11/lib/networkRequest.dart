import 'package:flutter/material.dart';

class NetworkRequest extends StatefulWidget {
  const NetworkRequest({Key? key}) : super(key: key);

  @override
  _NetworkRequestState createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {
  //simulate NetworkRequest
  Future<String> getData() async {
    String email = await Future.delayed(Duration(seconds: 3), () {
      //return 'sajewsasanka1@gmail.com';
      throw Exception('Server Down');
    });
    return email;
  }

  Future<void> getNetworkRequest() async{
    print(await getData());
  }

  @override
  void initState() {
    super.initState();
    getNetworkRequest();
    print('Other Codes');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Network Request'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get data',
              style: TextStyle(color: Colors.white, fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
