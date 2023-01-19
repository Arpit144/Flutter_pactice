
import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: positioned_widget(),
    ) ;
  }
}
class positioned_widget extends StatelessWidget {
  const positioned_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Positioned Widget'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Stack(
          children: [
            Positioned(
              bottom: 500,
              right: 50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            )
          ],
        ),
      ) ,
    );
  }
}

