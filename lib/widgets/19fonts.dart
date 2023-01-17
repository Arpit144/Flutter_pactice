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
          title: Text('Custom  Fonts'),
        ),
        body: Center(child: Text('Hello Arpit Patel',style: TextStyle(fontFamily: 'PT',fontSize: 30),)),
      ),
    );
  }
}
