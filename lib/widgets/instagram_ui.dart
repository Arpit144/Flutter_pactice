import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my Applicatoin',
      theme: ThemeData(primarySwatch: Colors.green),
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
      appBar: AppBar(title: Text('Instagram',style: TextStyle(fontFamily: 'PT'),),
        actions: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                  child: Icon(Icons.search, size: 30,)),
              Container(
                margin: EdgeInsets.only(right: 20),
                  child: Icon(Icons.message, size: 30,)),

            ],
          ),


        ],
      ),
    body:
      Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              child: ListView.builder(itemBuilder: (context, index) {
               return Container(
                 margin: EdgeInsets.only(right: 0,top: 10,bottom: 10) ,
                 child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.green,
                  ),
               );
              },
              itemCount: 50,
              scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black12,
              child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    color: Colors.black12,
                  ),
                );
              },)
            ),
          ), Expanded(
            flex: 1,
            child: Container(
              color: Colors.white54,
              child: Row(
                children: [
                  Expanded(flex: 1,child: Icon(Icons.home,size: 40,)),
                  Expanded(flex: 1,child: Icon(Icons.search_rounded,size: 40)),
                  Expanded(flex: 1,child: Icon(Icons.add,size: 40)),
                  Expanded(flex: 1,child: Icon(Icons.notifications,size: 40)),
                  Expanded(flex: 1,child: Icon(Icons.person,size: 40)),



                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
