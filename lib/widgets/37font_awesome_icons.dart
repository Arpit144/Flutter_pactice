import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '38positioned_widget.dart';

class FontawesomeiconScreen extends StatelessWidget {
  const FontawesomeiconScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: fontawesomeicons(),
    );
  }
}
class fontawesomeicons extends StatelessWidget {
  const fontawesomeicons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Font Awesome Icons'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(FontAwesomeIcons.amazon,size: 80,color: Colors.red,),
            FaIcon(FontAwesomeIcons.googlePay,size: 80,),
            FaIcon(FontAwesomeIcons.facebook,size: 80,color: Colors.blue,),
            FaIcon(FontAwesomeIcons.instagram,size: 80,color: Colors.redAccent,),
            FaIcon(FontAwesomeIcons.whatsapp,size: 80,color: Colors.green,),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PositionedScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
