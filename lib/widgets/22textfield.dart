import 'package:flutter/material.dart';

import '23registration.dart';

class TextfieldScreen extends StatelessWidget {
  const TextfieldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var name = TextEditingController();
    var email = TextEditingController();
    var pass = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
        ),
        body: Center(
          child: Container(
            width: 330,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: name,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.account_balance_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ) ,

                ),
                Container(height: 20,),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue,width: 2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      prefixIcon: Icon(Icons.mail),
                      suffixText: 'Yooo'
                  ) ,
                ),
                Container(height: 20,),
                TextField(
                  controller: pass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,width: 2),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    prefixIcon: Icon(Icons.password),
                    hintText: 'Enter Password here',
                  ) ,
                ),
                ElevatedButton(onPressed: () {
                  String uname=name.text.toString();
                  String uemail=email.text.toString();
                  String upass=pass.text.toString();

                  print('Name= $uname');
                  print('Email= $uemail');
                  print('Pass= $upass');


                }, child: Text('Login', style: TextStyle(fontSize: 25),)),
                ElevatedButton(onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  },));
                }, child: Text('Next',style: TextStyle(fontSize: 20),))
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
