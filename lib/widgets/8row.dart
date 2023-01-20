import 'package:flutter/material.dart';

import '9row_columns.dart';


class RowScreen extends StatelessWidget {
  const RowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Rows'),
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
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Row_ColumnScreen();
                },));
              }, child: Text('Next'))
            ],

          ),
        ),
      ),
    );
  }
}
