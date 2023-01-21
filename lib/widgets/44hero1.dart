import 'package:flutter/material.dart';

import '45hero2.dart';

class Hero1Screen extends StatelessWidget {
  const Hero1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hero Animation Screen 1'),),
        body: Container(
          child: Center(
            child: InkWell(
              onTap:  () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Hero2Screen();
                },));
              },
              child: Hero(
                tag: 'AP',
                child: Image.asset('assets/images/1.jpg',width: 200,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
