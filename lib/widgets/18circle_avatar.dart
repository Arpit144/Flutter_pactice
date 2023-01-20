import 'package:flutter/material.dart';

import '19fonts.dart';

class CircleavatarScreen extends StatelessWidget {
  const CircleavatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circle Avatar'),
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
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CustomefontScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
