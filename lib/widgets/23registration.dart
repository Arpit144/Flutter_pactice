import 'package:flutter/material.dart';

import '24date_time.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var name = TextEditingController();
    var email = TextEditingController();
    var mobile = TextEditingController();
    var pass = TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Field Practice'),
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            width: 370,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Registration', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                  Container(height: 20,),

                  TextField(
                    controller: name ,

                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.supervised_user_circle),
                      labelText: 'Name',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),


                    ) ,
                  ),
                  Container(height: 20,),
                  TextField(
                    controller: email ,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: 'Email',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                    ) ,
                  ),
                  Container(height: 20,),
                  TextField(
                    controller: mobile ,
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: 'Mobile Number',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                    ) ,
                  ),
                  Container(height: 20,),
                  TextField(
                    controller: pass ,
                    obscureText: true,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ) ,
                  ),
                  Container(height: 20,),
                  ElevatedButton(onPressed: () {

                    String uname = name.text.toString();
                    String uemail = email.text.toString();
                    String umobile = mobile.text.toString();
                    String upass = pass.text.toString();

                    print('Name = $uname ');
                    print('Email = $uemail ');
                    print('Mobile = $umobile ');
                    print('Password = $upass ');

                  }, child: Text('Register')),

                  ElevatedButton(onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DatetimeScreen();
                    },));
                  }, child: Text('Next',style: TextStyle(fontSize: 20),))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
