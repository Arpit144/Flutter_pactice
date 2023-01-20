import 'package:flutter/material.dart';

import '16margin_padding.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expended Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 150,
                  width: 200,
                  color: Colors.deepPurple,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(

                  height: 150,
                  width: 200,
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: 150,
                  width: 200,
                  color: Colors.deepOrange,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 150,
                  width: 200,
                  color: Colors.limeAccent,
                ),
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MarginPaddingScreen();
                },));
              }, child: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}
