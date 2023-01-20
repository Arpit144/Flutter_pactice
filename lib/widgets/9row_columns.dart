import 'package:flutter/material.dart';

import '10inkwell.dart';


class Row_ColumnScreen extends StatelessWidget {
  const Row_ColumnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rows and Colums'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return InkwellScreen();
                  },));
                }, child: Text('Next'))
              ],
            ),
          ),
        ),
    );
  }
}
