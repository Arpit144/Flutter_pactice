import 'package:flutter/material.dart';

import '29callback_function.dart';

class DynamicgridviewScreen extends StatelessWidget {
  const DynamicgridviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var colors = [
      Colors.teal,
      Colors.deepPurple,
      Colors.greenAccent,
      Colors.redAccent,
      Colors.deepPurple,
      Colors.greenAccent,
      Colors.redAccent,
      Colors.deepPurple,
      Colors.greenAccent,
      Colors.redAccent,
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic GridView'),
        ),
        body: Column(
          children: [
            Expanded(

              child: GridView.builder(itemBuilder: (context, index) {
                return Container(color: colors[index],);
              },
                itemCount: colors.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 11,
                    mainAxisSpacing: 11),
                // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(crossAxisCount: 5),

              ),
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CallbackScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        )
      ),
    );
  }
}
