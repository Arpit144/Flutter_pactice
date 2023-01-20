import 'package:flutter/material.dart';

import '1appbar.dart';
import '32custome_widget.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack UI',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Widget'),
      ),
    body:
        Container(
          height: 300,
          width: 300,
          child: Stack(
            children: [
              Container(
                height: 250,
                width: 250,
                color: Colors.deepPurple,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.redAccent,
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  height: 220,
                  width: 220,
                  color: Colors.blue,
                ),
              ),

              ElevatedButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CustomewidgetScreen();
                },));
              }, child: Text('Next',style: TextStyle(fontSize: 20),))
            ],

    ),
        ),

    );
  }
}
