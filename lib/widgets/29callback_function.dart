import 'package:flutter/material.dart';

import '30splitting_ui.dart';

class CallbackScreen extends StatelessWidget {
  const CallbackScreen({Key? key}) : super(key: key);

  callBack(){
    print('hello Arpit Patel');
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('CallBack function'),
        ),

        body: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Center(
              child: ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('This iS Button',style: TextStyle(fontSize: 30),),
                ),
                onPressed: (){
                  callBack();
                },
              ),
            ),
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SplitteduiScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
