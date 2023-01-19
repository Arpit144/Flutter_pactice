
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'constrainbox',
      theme: ThemeData(primarySwatch: Colors.red),
      home: constrainbox(),
    );
  }
}

class constrainbox extends StatefulWidget {
  const constrainbox({Key? key}) : super(key: key);

  @override
  State<constrainbox> createState() => _constrainboxState();
}

class _constrainboxState extends State<constrainbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Constrainbox'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 200,
          maxWidth: 200 ,
          minHeight: 100,
          minWidth: 100,
        ),
          child: Text('Hello Arpit This is the example of Constrain box so that you can understand',
            style: TextStyle(fontSize: 30),overflow: TextOverflow.fade,)
      ),
    );
  }
}

