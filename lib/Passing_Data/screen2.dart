
import 'package:flutter/material.dart';
import 'package:learnings/Passing_Data/screen1.dart';

class Screen2 extends StatelessWidget {

  var data;
  Screen2(this.data);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Screen 2'),),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$data',style: TextStyle(fontSize: 30),),

                ElevatedButton(onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Data();
                  },));

                }, child: Text('Back'))
              ],
            )),
      ),
    );
  }
}

class data extends StatefulWidget {
  const data({Key? key}) : super(key: key);

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
