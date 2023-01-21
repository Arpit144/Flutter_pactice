import 'package:flutter/material.dart';

import '46listwheel_3dlist.dart';

class Hero2Screen extends StatelessWidget {
  const Hero2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation Screen 2'),),
      body: Column(
        children: [
          Container(
            child: Hero(
              tag: 'AP',
              child: Image.asset('assets/images/1.jpg'),
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListwheelScreen();
            },));
          }, child: Text('Next'))
        ],
      ),
    );
  }
}
