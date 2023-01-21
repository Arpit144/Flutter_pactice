import 'package:flutter/material.dart';

import '43cross_fade.dart';

class AnimatedopacityScreen extends StatefulWidget {
  const AnimatedopacityScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedopacityScreen> createState() => _AnimatedopacityScreenState();
}

class _AnimatedopacityScreenState extends State<AnimatedopacityScreen> {

  var popacity = 1.0;

  bool isvisible = true;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Animated Opacity'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                duration: Duration(seconds: 1),
                opacity: popacity,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.redAccent,
                ),
              ),
              ElevatedButton(onPressed: () {

                setState(() {

                  if(isvisible){
                    popacity=0.0;
                    isvisible=false;
                  }
                  else
                  {
                    popacity=1.0;
                    isvisible=true;
                  }


                });

              }, child: Text('Animate')),


              ElevatedButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CrossfadeScreen();
                },));

              }, child: Text('Next'))
            ],
          ),
        ),

      ),
    );
  }
}
