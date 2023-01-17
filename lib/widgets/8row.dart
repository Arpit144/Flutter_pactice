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
        body: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.brown,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blueAccent,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.greenAccent,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.cyanAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
