import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var colors = [
      Colors.teal,
      Colors.deepPurple,
      Colors.greenAccent,
      Colors.redAccent,
      Colors.deepPurple,
      Colors.greenAccent,
      Colors.redAccent,
      Colors.deepPurple,
      Colors.greenAccent,
      Colors.redAccent,
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arpit Patel'),
        ),
        body: GridView.builder(itemBuilder: (context, index) {
          return Container(color: colors[index],);
        },
          itemCount: colors.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11),
          // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(crossAxisCount: 5),

        )
      ),
    );
  }
}
