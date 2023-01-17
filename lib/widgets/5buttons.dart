import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arpit Patel'),
        ),


        body: Center(
          child: Column(
            children: [


              TextButton(
                child: Text('Click ME',style: TextStyle(fontSize: 30),),
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


            ],
          ),
        ),
      ),
    );
  }
}
