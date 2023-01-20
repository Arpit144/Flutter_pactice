import 'package:flutter/material.dart';

import '13listview_seprated.dart';


class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var arrnames = ['Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel',];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic ListView '),
        ),
        body: Column(
          children: [
            Expanded(
              
              child: ListView.builder(itemBuilder: (context, index) {
                return Center(child: Text( arrnames[index] ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),));
              },
                itemCount: arrnames.length,
                itemExtent:50,  // TO provide padding between list
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                 return ListviewsapretedScreen();
              },));
            }, child: Text('Next'))
          ],
        ),
      ),


    );
  }
}
