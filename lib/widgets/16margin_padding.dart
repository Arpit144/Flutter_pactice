import 'package:flutter/material.dart';

import '17list_tile.dart';

class MarginPaddingScreen extends StatelessWidget {
  const MarginPaddingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Margin Padding'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(30),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text('Hello There',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                )),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListtileScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
