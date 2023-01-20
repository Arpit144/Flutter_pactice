import 'package:flutter/material.dart';

import '28gridview_builder.dart';

class GridviewScreen extends StatelessWidget {
  const GridviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Static Gridview'),
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
              ),
              ElevatedButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DynamicgridviewScreen();
                },));
              }, child: Text('Next',style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
        
      ),
    );
  }
}
