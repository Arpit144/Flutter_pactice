
import 'package:flutter/material.dart';

import '37font_awesome_icons.dart';

class IconsScreen extends StatelessWidget {
  const IconsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'icons',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: myhomepage(),
    );
  }
}
class myhomepage extends StatelessWidget {
  const myhomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icons'),
          leading: Icon(Icons.arrow_back)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle_outline,
              size: 80,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.account_balance_rounded,
              size: 80,
              color: Colors.deepPurple,
            ),  Icon(
              Icons.add,
              size: 80,
              color: Colors.deepPurple,
            ),  Icon(
              Icons.access_alarms_rounded,
              size: 80,
              color: Colors.deepPurple,
            ),  Icon(
              Icons.person,
              size: 80,
              color: Colors.deepPurple,
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FontawesomeiconScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}

