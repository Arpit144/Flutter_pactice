import 'package:flutter/material.dart';

import '49mapping.dart';

class GradientScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gradient Colors'),),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.purple,
                      Colors.green
                    ],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(1.0,1.0)
                  )
                ),
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                         Color(0xffa18cd1),
                         Color(0xfffbc2eb)
                        ],
                    )
                ),
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0xfff093fb),
                        Color(0xfff5576c)
                      ],
                    )
                ),
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Color(0xff30cfd0),
                        Color(0xfffbc2eb),
                        Colors.blue.shade200
                      ],
                      center: Alignment.topLeft
                    )
                ),
                height: 200,
                width: 200,
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MappingScreen(),));
              }, child: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}
