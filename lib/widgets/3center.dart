import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center'),

        ),
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.blue,
            child: Center(
                child: Text('Hello ',style: TextStyle(color: Colors.white, fontSize: 25),)),
          ),
        ),
      ),
    );
  }
}
