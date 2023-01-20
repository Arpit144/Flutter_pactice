import 'package:flutter/material.dart';

import '7columns.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image'),
        ),
        body:Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/download.jpeg'),
              ElevatedButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColumnScreen();
                },));
              }, child: Text('Next',style: TextStyle(fontSize: 20),))
            ],
          ),
        )
      ),
    );
  }
}
