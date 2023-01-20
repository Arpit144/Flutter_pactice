import 'package:flutter/material.dart';

import '3center.dart';


class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),

        ),
       body: Column(
         children: [
           Container(
             height: 100,
             width: 100,
             color: Colors.blue,
             child: Text('This Is Container')
           ),
           ElevatedButton(onPressed: () {

             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return CenterwidhgetScreen();
             },));
           }, child: Text('Next',style: TextStyle(fontSize: 20),))
         ],
       ),
      ),
    );
  }
}
