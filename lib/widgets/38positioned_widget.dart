
import 'package:flutter/material.dart';

import '39constrained_box.dart';


class PositionedScreen extends StatelessWidget {
  const PositionedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: positioned_widget(),
    ) ;
  }
}
class positioned_widget extends StatelessWidget {
  const positioned_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Positioned Widget'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              bottom: 500,
              right: 50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ConstrainedScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ) ,
    );
  }
}

