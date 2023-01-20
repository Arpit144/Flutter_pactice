import 'package:flutter/material.dart';
import 'package:learnings/widgets/1appbar.dart';

import '0splash_screen.dart';
import '2cointainer.dart';

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
      home: SplashScreen(),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold) ,),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AppbarScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),)),

          ],
        ),
      ),
    );
  }
}
