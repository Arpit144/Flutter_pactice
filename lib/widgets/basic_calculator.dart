
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(calculator());
}

class calculator extends StatelessWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
      theme: ThemeData(primarySwatch: Colors.red),
      home: mainpage(),
    );
  }
}

class mainpage extends StatefulWidget {


  @override
  State<mainpage> createState() => _mainpageState();
}
class _mainpageState extends State<mainpage> {

  var no1con = TextEditingController();
  var no2con = TextEditingController();

  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basic Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 80,
              child: TextField(
                controller: no1con,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusColor: Colors.red,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  label:Text('First Value'),

                ),
              ),
            ),
            Container(
              width: 200,
              height: 80,
              child: TextField(
                controller: no2con,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  focusColor: Colors.red,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  label:Text('Second Value'),

                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 ElevatedButton(onPressed: () {
                   var no1 = int.parse(no1con.text.toString());
                   var no2 = int.parse(no2con.text.toString());

                   var sum = no1+no2;



                   setState(() {
                     result = "$sum";
                   });

                  }, child: Icon(Icons.add)),

                ElevatedButton(onPressed: () {

                  var no1 = int.parse(no1con.text.toString());
                  var no2 = int.parse(no2con.text.toString());

                  var sub = no1-no2;

                  setState(() {
                    result = "$sub";
                  });
                  }, child: Icon(Icons.remove)),
                ElevatedButton(onPressed: () {

                  var no1 = int.parse(no1con.text.toString());
                  var no2 = int.parse(no2con.text.toString());

                  var mul = no1*no2;

                  setState(() {
                    result = "$mul";
                  });

                  }, child: FaIcon(FontAwesomeIcons.x)),
                ElevatedButton(onPressed: () {

                  var no1 = int.parse(no1con.text.toString());
                  var no2 = int.parse(no2con.text.toString());

                  var div = no1/no2;

                  setState(() {
                    result = "${div.toStringAsFixed(2)}";
                  });

                  }, child: Text('%')),

              ],
            ),

            SizedBox(height: 30,),
            Text(result, style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}
