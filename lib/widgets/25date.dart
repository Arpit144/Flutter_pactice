import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '26date_time_picker.dart';



class DateScreen extends StatefulWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  State<DateScreen> createState() => _MyAppState();
}

class _MyAppState extends State<DateScreen> {
  @override
  Widget build(BuildContext context) {
    var datetime = DateTime.now();


    //intl: ^0.18.0 in pubspec,yaml ALSO import 'package:intl/intl.dart';


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Date & Time Format'),
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
                }, child: Text('Change')),
                ElevatedButton(onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DatetimepickerScreen();
                  },));
                }, child: Text('Next',style: TextStyle(fontSize: 20),))
              ],
            )),
      ),
    );
  }
}



