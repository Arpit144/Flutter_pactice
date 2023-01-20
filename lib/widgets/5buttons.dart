import 'package:flutter/material.dart';

import '6addimage.dart';


class ButtonScreen extends StatelessWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Types'),
        ),


        body: Center(
          child: Column(
            children: [


              TextButton(
                child: Text('Text Button',style: TextStyle(fontSize: 30),),
                onPressed: () {
                  print('text Button clicked');
                },
                onLongPress: () {
                  print('text Button Long pressed');
                },
              ),


              ElevatedButton(
                  child: Text('Eleveted Button',style: TextStyle(fontSize: 30),),
                 onPressed: () {
                   print('Eleveted Button');
                 },
                onLongPress: () {
                  print('Long Pressed eleved button');
                },
              ),


              OutlinedButton( child: Text('OutLined Button',style: TextStyle(fontSize: 30),),
                onPressed: () {
                  print('Outlined Button Pressed');
                },
                onLongPress: () {
                  print('long Pressed Outlined Button');
                },
              ),

              ElevatedButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ImageScreen();
                },));
              }, child: Text('Next',style: TextStyle(fontSize: 20),))

            ],
          ),
        ),
      ),
    );
  }
}
