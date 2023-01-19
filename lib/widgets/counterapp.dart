
import 'package:flutter/material.dart';

void main(){
  runApp(counterapp());
}

class counterapp extends StatelessWidget {
  const counterapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'counterapp',
      theme: ThemeData(primarySwatch: Colors.red),

      home: counterpage(),
    ) ;
  }
}

class counterpage extends StatefulWidget {
  @override
  State<counterpage> createState() => _counterpageState();
}

class _counterpageState extends State<counterpage> {

  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter : $counter',style: TextStyle(fontSize: 30)),
            ElevatedButton(onPressed: () {

              setState(() {
                // counter = counter+5;
                counter++;
                print(counter);
              });


            }, child: Text('Click To Increse Value',style: TextStyle(fontSize: 30),))
          ],
        ),
      ),
    );
  }
}
