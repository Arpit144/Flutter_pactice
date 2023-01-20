
import 'package:flutter/material.dart';

import '36icons.dart';


class RichtextScreen extends StatelessWidget {
  const RichtextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'rich Text',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: Text('Rich Text'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
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
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return IconsScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}

