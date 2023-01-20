import 'package:flutter/material.dart';

import '25date.dart';

class DatetimeScreen extends StatefulWidget {
  const DatetimeScreen({Key? key}) : super(key: key);

  @override
  State<DatetimeScreen> createState() => _MyAppState();
}

class _MyAppState extends State<DatetimeScreen> {
  @override
  Widget build(BuildContext context) {
    var datetime = DateTime.now();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Time&Date'),
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

            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DateScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        )),

      ),
    );
  }
}



