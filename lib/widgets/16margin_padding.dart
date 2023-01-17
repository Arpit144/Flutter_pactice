import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arpit Patel'),
        ),
        body: Container(
          color: Colors.blue,
          margin: EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Text('Hello There',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            )),
      ),
    );
  }
}
