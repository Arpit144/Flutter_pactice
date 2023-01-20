import 'package:flutter/material.dart';

import '41animated_container.dart';

class RangesliderScreen extends StatefulWidget {
  const RangesliderScreen({Key? key}) : super(key: key);

  @override
  State<RangesliderScreen> createState() => _RangesliderScreenState();
}

class _RangesliderScreenState extends State<RangesliderScreen> {

  RangeValues rValue = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {

    RangeLabels rlabel = RangeLabels(rValue.start.toString(), rValue.end.toString());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Range Slider'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RangeSlider(
              values: rValue,
              labels: rlabel,
              activeColor: Colors.red,
              inactiveColor: Colors.yellow,
              divisions: 20,
              min: 0,
              max: 100,
              onChanged: (newValue){
                rValue = newValue;
                setState(() {

                });
              },
            ),
          ),
          ElevatedButton(onPressed: () {

            Navigator.push(context, MaterialPageRoute(builder: (context) {

              return FooanimationScreen();
            },));
          }, child: Text('Next'))
        ],
      ),
      ),
    ) ;
  }
}
