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
          title: Text('Arpit Patel'),
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.redAccent,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.deepPurple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
