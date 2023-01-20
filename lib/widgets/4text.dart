import 'package:flutter/material.dart';

import '5buttons.dart';


class TextstyleScreen extends StatelessWidget {
  const TextstyleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text style'),

        ),
        body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello Arpit',style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    backgroundColor: Colors.redAccent,
                ),
                ),
                ElevatedButton(onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ButtonScreen();
                  },));
                }, child: Text('Next',style: TextStyle(fontSize: 20),))
              ],
            )
        )
      ),
    );
  }
}
