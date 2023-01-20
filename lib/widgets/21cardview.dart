import 'package:flutter/material.dart';

import '22textfield.dart';

class CardviewScreen extends StatelessWidget {
  const CardviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card View'),
        ),
        body: Column(
          children: [
            Card(
              shadowColor: Colors.redAccent,
              elevation: 15,
              child: Container(
                height: 70,
                child: Center(child: Text('Hello Arpit Patel',style: TextStyle(fontSize: 25),)),
              ),
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TextfieldScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
