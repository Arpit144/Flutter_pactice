import 'package:flutter/material.dart';

import '14decoretions.dart';

class ListviewsapretedScreen extends StatelessWidget {
  const ListviewsapretedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var arrnames = ['Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel',];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Saprated ListView '),
        ),
        body: Column(
          children: [
            Expanded(

              child: ListView.separated(itemBuilder: (context, index) {
                return Center(child: Text( arrnames[index] ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),));
              },
                itemCount: arrnames.length,
               separatorBuilder: (context, index) {
                 return Divider(height: 50, thickness: 10);
               }),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DecoretionScreen();
              },));
            }, child: Text('Next'))
          ],
        ),
        ),



    );
  }

  void tionScreen() {}
}
