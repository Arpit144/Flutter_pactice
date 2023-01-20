import 'package:flutter/material.dart';
import 'package:learnings/Passing_Data/screen2.dart';

void main(){
  runApp(Data());
}

class Data extends StatelessWidget {
  const Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1'),),
      body: Center(
        child: Container(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                controller: name ,
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  focusColor: Colors.red,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              ElevatedButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Screen2(name.text.toString());
                },));

              }, child: Text('Send Data'))
            ],
          ),
        ),
      ),
    );
  }
}
