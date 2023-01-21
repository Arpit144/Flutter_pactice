import 'package:flutter/material.dart';

class CliprractScreen extends StatelessWidget {
  const CliprractScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Clip R Ract'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: 
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/images/1.jpg',width: 300,))
            ),
          ],
        ),
      ),
    );
  }
}

