import 'package:flutter/material.dart';
import 'package:learnings/custome_widgets/rounded_button.dart';

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
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          child: golbutton(
            btnname: 'Hello',
            icon: Icon(Icons.home),
          ),
        ),
      ),
    );
  }
}
