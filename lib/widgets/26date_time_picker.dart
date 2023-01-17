// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Date Time Picker')
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               ElevatedButton(onPressed: () async {
                 DateTime? date = await showDatePicker(
                     context: context,
                     initialDate: DateTime.now(),
                     firstDate: DateTime(2021),
                     lastDate: DateTime(2022)
                 );

                 if(date!=null){
                   print('${date.day}-${date.month}-${date.year}');
                 }
               }, child: Text('Select Date'))
              ],
            ),
          ),
      ),
    );
  }
}
