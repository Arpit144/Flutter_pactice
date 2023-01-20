import 'package:flutter/material.dart';

import '4text.dart';


class CenterwidhgetScreen extends StatelessWidget {
  const CenterwidhgetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Center Container'),

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Center(
                    child: Text('Center',style: TextStyle(color: Colors.white, fontSize: 25),)),
              ),
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TextstyleScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
