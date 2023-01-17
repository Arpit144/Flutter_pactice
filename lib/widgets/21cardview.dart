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
        body: Card(
          shadowColor: Colors.redAccent,
          elevation: 15,
          child: Container(
            height: 70,
            child: Center(child: Text('Hello Arpit Patel',style: TextStyle(fontSize: 25),)),
          ),
        ),
      ),
    );
  }
}
