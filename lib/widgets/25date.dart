import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var datetime = DateTime.now();


    //intl: ^0.18.0 in pubspec,yaml ALSO import 'package:intl/intl.dart';


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arpit Patel'),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${DateFormat('Hms').format(datetime)}',style: TextStyle(fontSize: 30),),
                Text('${DateFormat('jms').format(datetime)}',style: TextStyle(fontSize: 30),),
                Text('${DateFormat('EEEE').format(datetime)}',style: TextStyle(fontSize: 30),),
                Text('${DateFormat('MMMM').format(datetime)}',style: TextStyle(fontSize: 30),),
                Text('${DateFormat('y').format(datetime)}',style: TextStyle(fontSize: 30),),

                ElevatedButton(onPressed: () {
                  setState(() {

                  });
                }, child: Text('Change'))
              ],
            )),
      ),
    );
  }
}



