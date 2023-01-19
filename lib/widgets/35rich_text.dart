
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'rich Text',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: Text('Rich Text'),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 25, fontFamily: 'PT',color: Colors.deepPurple),
              children: <TextSpan> [
                TextSpan(text: 'Hello  '),
                TextSpan(text: 'Arpit  ' ,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.red)),
                TextSpan(text: 'learning '),
                TextSpan(text: 'Fluuter '),


              ]
            ),
          ),
        ),
      ),
    );
  }
}

