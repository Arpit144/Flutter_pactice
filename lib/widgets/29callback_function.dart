import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  callBack(){
    print('hello Arpit Patel');
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arpit Patel'),
        ),

        body: Center(
          child: ElevatedButton(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('This iS Button',style: TextStyle(fontSize: 30),),
            ),
            onPressed: (){
              callBack();
            },
          ),
        ),
      ),
    );
  }
}
