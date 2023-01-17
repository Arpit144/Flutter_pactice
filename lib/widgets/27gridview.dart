import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gridview'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                child: GridView.count(crossAxisCount: 4,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 11,
                    children: [
                      Container(color: Colors.blue,),
                      Container(color: Colors.redAccent,),
                      Container(color: Colors.greenAccent,),
                      Container(color: Colors.black,),
                      Container(color: Colors.deepPurple,),],
                  ),
              ),

              Container(
                height: 300,
                child: GridView.extent(maxCrossAxisExtent: 100,
                crossAxisSpacing: 11,
                  mainAxisSpacing: 11,
                  children: [
                    Container(color: Colors.blue,),
                    Container(color: Colors.redAccent,),
                    Container(color: Colors.greenAccent,),
                    Container(color: Colors.black,),
                    Container(color: Colors.deepPurple,),
                    Container(color: Colors.blue,),
                    Container(color: Colors.redAccent,),
                    Container(color: Colors.greenAccent,),
                    Container(color: Colors.black,),
                    Container(color: Colors.deepPurple,),
                  ],
                ),
              )
            ],
          ),
        ),
        
      ),
    );
  }
}
