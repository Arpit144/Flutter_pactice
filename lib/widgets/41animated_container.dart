import 'package:flutter/material.dart';

import '42animated_opacity.dart';

class FooanimationScreen extends StatefulWidget {

  @override
  State<FooanimationScreen> createState() => _FooanimationScreenState();
}

class _FooanimationScreenState extends State<FooanimationScreen> {

  var hheight = 100.0;
  var wwidth = 200.0;
  bool flag = true;
  Decoration mydecor = BoxDecoration(
    borderRadius: BorderRadius.circular(1),
    color: Colors.greenAccent,
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Foo Animation'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 3),
                height: hheight,
                width: wwidth,
                decoration: mydecor,
                curve: Curves.bounceInOut,
              ),
              ElevatedButton(onPressed: (){

                setState(() {
                  if(flag) {

                    hheight = 200.0;
                    wwidth = 100.0;
                    flag = false;
                    mydecor =BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    );
                  }else
                    {
                      wwidth = 200.0;
                      hheight = 100.0;
                      flag = true;
                      mydecor =BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        color: Colors.tealAccent,
                      );
                    }
                });
              }, child: Text('Animate')),


              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AnimatedopacityScreen();
                },));
              }, child: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}
