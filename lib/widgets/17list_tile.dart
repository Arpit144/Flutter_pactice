import 'package:flutter/material.dart';

import '18circle_avatar.dart';

class ListtileScreen extends StatelessWidget {
  const ListtileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var arrnames = ['Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel','Arpit','Patel','Dhruvil','Patel'];
    var arrnum = ['95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548','95959959587','5844756585','4858595686','1515151548',];


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic ListTile '),
        ),



        body: Column(
          children: [
            Expanded(

              child: ListView.separated(itemBuilder: (context, index) {
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
            ElevatedButton(onPressed: () {

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CircleavatarScreen();
              },));
            }, child: Text('Next',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),



    );
  }
}
