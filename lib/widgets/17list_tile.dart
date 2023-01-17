import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {



    var arrnames = ['Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel'];
    var arrnum = ['95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548',];


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic ListView '),
        ),



        body: ListView.separated(itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index+1}'),
            title: Text(arrnames[index]),
            subtitle: Text(arrnum[index]),
            trailing: Icon(Icons.account_balance_rounded),

          );
        },
            itemCount: arrnames.length,
            separatorBuilder: (context, index) {
              return Divider(height: 50, thickness: 10);
            }),
      ),



    );
  }
}
