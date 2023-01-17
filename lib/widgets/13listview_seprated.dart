import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {



    var arrnames = ['Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel',];



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic ListView '),
        ),



        body: ListView.separated(itemBuilder: (context, index) {
          return Center(child: Text( arrnames[index] ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),));
        },
          itemCount: arrnames.length,
         separatorBuilder: (context, index) {
           return Divider(height: 50, thickness: 10);
         }),
        ),



    );
  }
}
