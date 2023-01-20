import 'package:flutter/material.dart';
import 'package:learnings/themes/styles.dart';

import '21cardview.dart';


class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'PT'),
          headline2: TextStyle(fontSize: 30,fontWeight: FontWeight.normal),

        )
      ),


      home: Scaffold(
        appBar: AppBar(
          title: Text('Styles & Themes'),
        ),
        body: Center(child: Column(
          children: [
            Text('Hello',style: Theme.of(context).textTheme.headline1,),
            Text('Arpit',style: Theme.of(context).textTheme.headline2,),
            Text('Patel',style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.red),),
            Text('Folder1', style: myText1(),),
            Text('Folder2', style: myText2(mcolor1: Colors.redAccent),),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CardviewScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))


          ],
        )),
      ),
    );
  }
}
