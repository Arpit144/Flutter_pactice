// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';

import '27gridview.dart';


class DatetimepickerScreen extends StatefulWidget {
  const DatetimepickerScreen({Key? key}) : super(key: key);

  @override
  State<DatetimepickerScreen> createState() => _MyAppState();
}

class _MyAppState extends State<DatetimepickerScreen> {
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
               }, child: Text('Select Date')),
                ElevatedButton(onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return GridviewScreen();
                  },));
                }, child: Text('Next',style: TextStyle(fontSize: 20),))
              ],
            ),
          ),
      ),
    );
  }
}
