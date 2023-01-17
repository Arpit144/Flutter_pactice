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
        body: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/boy.png'),
                minRadius: 50,
                maxRadius: 70,
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/boy.png'),
                backgroundColor: Colors.red,
                maxRadius: 70,
                child: Text('Name', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
