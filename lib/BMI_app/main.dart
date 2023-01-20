import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(BMI());
}

class BMI extends StatelessWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var weight = TextEditingController();
  var feet = TextEditingController();
  var inch = TextEditingController();

  var result = "";

  var bgcolor = Colors.blue.shade50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'),),
      body: Container(
            color: bgcolor,
            child: Center(
              child: Container(
                width: 250,
                child: SingleChildScrollView(

                  child: Column(
                    children: [
                      Text('Body mass index',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'PT'),),
                      SizedBox(height: 20,),
                      TextField(
                        controller: weight,
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.line_weight),
                          labelText: 'Weight',
                          hintText: 'Enter Weight here in kg',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                      TextField(
                        controller: feet,
                        keyboardType: TextInputType.number,
                        maxLength: 1,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height),
                            labelText: 'Height In Feet',
                            hintText: 'In Feet',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                      ),TextField(
                        controller: inch,
                        keyboardType: TextInputType.number,
                        maxLength: 2,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height),
                            labelText: 'Height In Inches',
                            hintText: 'In Inches',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                      ElevatedButton(onPressed: () {

                        var wt = weight.text.toString();
                        var ft = feet.text.toString();
                        var inches = inch.text.toString();

                        if( wt != "" && ft != "" && inches != ""){


                          var iwt = int.parse(wt);
                          var ift = int.parse(ft);
                          var iinches = int.parse(inches);

                          var totalinch = (ift * 12) + iinches;//foot into inches conversion
                          var totalcm = totalinch * 2.54 ;
                          var totalmeter = totalcm/100;

                          var bmi = iwt/(totalmeter * totalmeter);

                          var msg = "";

                          if(bmi>25){

                            msg = "You Are Overweight";
                            bgcolor = Colors.red.shade300;

                          }else if(bmi<18){

                            msg = "You Are UnderWeight";
                            bgcolor = Colors.yellow.shade300;

                          }else{

                            msg = "You Are Perfect";
                            bgcolor = Colors.green.shade300;

                          }

                          setState(() {
                            result = "Your BMI is : ${bmi.toStringAsFixed(2)}\n\n $msg ";
                          });
                        }
                        else{
                          setState(() {
                            result = "Please Fill all the Fields";
                          });
                        }

                      }, child: Text( 'Calculate BMI')),

                      SizedBox(height: 40),

                      Text(result,style: TextStyle(fontSize: 22,fontFamily: 'PT'),)
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
