import 'package:flutter/material.dart';

class AnimatedopacityScreen extends StatefulWidget {
  const AnimatedopacityScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedopacityScreen> createState() => _AnimatedopacityScreenState();
}

class _AnimatedopacityScreenState extends State<AnimatedopacityScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Animated Opacity'),),
        

      ),
    );
  }
}
