import 'package:flutter/material.dart';

import '47cliprract.dart';

class ListwheelScreen extends StatelessWidget {
  const ListwheelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: List(),
    );
  }
}

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {

  var arrindex = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('3d Listwheel'),),
      body: Column(
        children: [
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListWheelScrollView(
                itemExtent: 200,
                children: arrindex.map((valueofarr) => Container(
                  child: Center(child: Text('$valueofarr',style: TextStyle(fontSize: 30),)),
                  width: double.infinity,
                  
                  decoration: BoxDecoration(
                    color: Colors.blue.shade200,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),).toList(),
              ),
            ),
          ),
          ElevatedButton(onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CliprractScreen();
            },));

          }, child: Text('Next'))
        ],
      ),
    );
  }
}
