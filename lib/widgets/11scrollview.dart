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
          title: Text('ScrollView'),
        ),
        body:


        Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.deepPurple,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10,left: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.deepOrange,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.red,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.amber,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.black45,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.limeAccent,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.tealAccent,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.lightGreenAccent,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.deepOrange,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.green,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.blueAccent,
                        margin: EdgeInsets.only(right: 10,bottom: 10,top: 10),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 300,
                  color: Colors.blue,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 300,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 300,
                  color: Colors.green,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 300,
                  color: Colors.deepPurple,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 300,
                  color: Colors.deepOrangeAccent,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
