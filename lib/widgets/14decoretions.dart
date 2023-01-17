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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(22)
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    border: Border.all(
                      width: 10,
                      color: Colors.black,
                    )
                    )
                  ),
                Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        color: Colors.red,
                        spreadRadius: 15
                      )
                    ]
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
