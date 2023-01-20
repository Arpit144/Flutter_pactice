import 'package:flutter/material.dart';

import '11scrollview.dart';


class InkwellScreen extends StatelessWidget {
  const InkwellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inkwell'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
                child: InkWell(
                    child: Text('Click Me ',
                      style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),
                  onTap: () {
                    print('Inkwell Pressed');
                  },
                  onLongPress: () {
                      print('Long Pressed Text');
                  },
                ),
            ),
            InkWell(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              onTap: () {
                print('Inkwell Pressed Container Red');
              },
              onLongPress: () {
                print('Long Pressed Coontainer Red');
              },
            ),
            InkWell(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              onTap: () {
                print('Inkwell Pressed Container Blue');
              },
              onLongPress: () {
                print('Long Pressed Coontainer Blue');
              },
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ScrollviewScreen();
              },));
            }, child: Text('Next'))

          ],
        ),
      ),
    );
  }
}
