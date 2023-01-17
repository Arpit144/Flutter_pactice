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
      appBar: AppBar(title: Text('Arpit'),
      ),
      body: Column(
        children: [
          story(),
          list(),
          boxpage(),
          menu(),
        ],
      ),
    );
  }
}

class story extends StatefulWidget {
  const story({Key? key}) : super(key: key);

  @override
  State<story> createState() => _storyState();
}

class _storyState extends State<story> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      flex: 1,
      child: Container(
          color: Colors.redAccent,
          child:
          ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.cyan,
                radius: 45,
              ),
            );
          },
            itemCount: 20,
            scrollDirection: Axis.horizontal,
          )
      ),
    );
  }
}

class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
          color: Colors.greenAccent,
          child: ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 20,
              ),
              title: Text('Name'),
              subtitle: Text ('Mobile No'),
              trailing: Icon(Icons.delete),
            );
          },
            itemCount: 50,
            scrollDirection: Axis.vertical,
          )
      ),
    );
  }
}

class boxpage extends StatefulWidget {
  const boxpage({Key? key}) : super(key: key);

  @override
  State<boxpage> createState() => _boxpageState();
}

class _boxpageState extends State<boxpage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.blue,
        child: ListView.builder(itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.deepPurple,
              width: 100,
            ),
          );
        },
          itemCount: 25,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class menu extends StatefulWidget {
  const menu({Key? key}) : super(key: key);

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.tealAccent,
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Icon(Icons.home,size: 50,)),
            Expanded(
                flex: 2,
                child: Icon(Icons.search_rounded,size: 50,)),
            Expanded(
                flex: 2,
                child: Icon(Icons.add,size: 50,)),
            Expanded(
                flex: 2,
                child: Icon(Icons.delete,size: 50,)),

          ],
        ),
      ),
    );
  }
}
