import 'package:flutter/material.dart';

import '2cointainer.dart';

class AppbarScreen extends StatelessWidget {
  const AppbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is Appbar'),
        ),
        body: Center(
          child: ElevatedButton(onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ContainerScreen();
            },));
          }, child: Text('Next',style: TextStyle(fontSize: 20),)),
        ),
      ),
    );
  }
}
