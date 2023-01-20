
import 'package:flutter/material.dart';

import '34sizedbox.dart';


class Wrapscreen extends StatelessWidget {
  const Wrapscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Application' ,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wrap Widget')) ,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.spaceAround,
          children: [
            Container(
              height: 80,
              width: 80,
              color: Colors.redAccent,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.tealAccent,
            ),Container(
              height: 80,
              width: 80,
              color: Colors.greenAccent,
            ),Container(
              height: 80,
              width: 80,
              color: Colors.amber,
            ),Container(
              height: 80,
              width: 80,
              color: Colors.black87,
            ),Container(
              height: 80,
              width: 80,
              color: Colors.green,
            ),Container(
              height: 80,
              width: 80,
              color: Colors.indigo,
            ),Container(
              height: 80,
              width: 80,
              color: Colors.yellowAccent,
            ),Container(
              height: 80,
              width: 80,
              color: Colors.tealAccent,
            ),Container(
              height: 80,
              width: 80,
              color: Colors.indigo,
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SizedboxScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
