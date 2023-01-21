import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learnings/BMI_app/main.dart';

import '44hero1.dart';


class CrossfadeScreen extends StatelessWidget {
  const CrossfadeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Animation(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class Animation extends StatefulWidget {
  const Animation({Key? key}) : super(key: key);

  @override
  State<Animation> createState() => _AnimationState();
}

class _AnimationState extends State<Animation> {

  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cross Fade Animation'),),
      body: Center(
        child: Column(
          children: [
            AnimatedCrossFade(
              duration: Duration(seconds: 1),
              firstChild: InkWell(child: Icon(Icons.search,size: 50,),
              onTap: () {
                setState(() {
                  if(isFirst){
                    isFirst=false;
                  }
                });
              },
              ),
              secondChild: Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.blue,
                    suffixIcon: InkWell(child: Icon(Icons.close,size: 30,color: Colors.black,),
                    onTap: () {
                      setState(() {
                        if(isFirst==false){
                          isFirst=true;
                        }
                      });
                    },
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
              crossFadeState: isFirst? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),

            SizedBox(height: 200),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Hero1Screen();
              },));
            }, child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
