import 'package:flutter/material.dart';

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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Arpit Patel'),
        ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$datetime,',style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: () {
              setState(() {

              });
            }, child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Current Date and Time'),
            )),
            Container(height: 50,),
            Text('Date: ${datetime.day}'),
            Text('Month: ${datetime.month}'),
            Text('Year: ${datetime.year}'),
            Text('Hour: ${datetime.hour}'),
            Text('minit: ${datetime.minute}'),
            Text('Seconds: ${datetime.second}'),
            Text('miliseconds: ${datetime.microsecond}'),
            ElevatedButton(onPressed: () {
              setState(() {

              });
            }, child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Current Date and Time'),
            )),

          ],
        )),

      ),
    );
  }
}



