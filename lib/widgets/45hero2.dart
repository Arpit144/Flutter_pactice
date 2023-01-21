import 'package:flutter/material.dart';

class Hero2Screen extends StatelessWidget {
  const Hero2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Animation Screen 2'),),
      body: Container(
        child: Hero(
          tag: 'AP',
          child: Image.asset('assets/images/1.jpg'),
        ),
      ),
    );
  }
}
