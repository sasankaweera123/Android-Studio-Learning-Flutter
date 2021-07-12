import 'package:flutter/material.dart';

dynamic userData = "";
class NetworkRequest extends StatefulWidget {
  const NetworkRequest({Key? key}) : super(key: key);

  @override
  _NetworkRequestState createState() => _NetworkRequestState();
}

class _NetworkRequestState extends State<NetworkRequest> {

  //simulate network NetworkRequest

  void getData() async
  {
    //simulate network request to get user email
    String email = await Future.delayed(Duration(seconds: 3),(){
      return 'sajewsasanka1@gmail.com';
    });
    String bioData =await Future.delayed(Duration(seconds: 2),(){
      return 'Age : 21 Name: Sasanka';
    });
    setState(() {
      userData = email + " \n "+bioData;
    });
    print(email +" - "+bioData);
  }

  @override
  void initState(){
    super.initState();
    getData();
    print('Other Programs');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Asynchronous Programming'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$userData",style: TextStyle(color: Colors.white,fontSize: 25),),
          ],
        ),
      ),
    );
  }
}
