import 'package:flutter/material.dart';

class Mapping_Screen extends StatefulWidget {
  const Mapping_Screen({Key? key}) : super(key: key);

  @override
  State<Mapping_Screen> createState() => _Mapping_ScreenState();
}

class _Mapping_ScreenState extends State<Mapping_Screen> {

  var arrData = [
    {
      'name': 'Arpit',
      'mobno': '9898985936',
      'unread': '5'
    },
    {
      'name': 'Patel',
      'mobno': '5648582543',
      'unread': '7'
    },
    {
      'name': 'Kirtan',
      'mobno': '1545785695',
      'unread': '8'
    },
    {
      'name': 'Nisarg',
      'mobno': '7584855875',
      'unread': '10'
    },
    {
      'name': 'Rajan',
      'mobno': '4585859596',
      'unread': '4'
    },
    {
      'name': 'Arpit',
      'mobno': '9898985936',
      'unread': '5'
    },
    {
      'name': 'Patel',
      'mobno': '5648582543',
      'unread': '7'
    },
    {
      'name': 'Kirtan',
      'mobno': '1545785695',
      'unread': '8'
    },
    {
      'name': 'Nisarg',
      'mobno': '7584855875',
      'unread': '10'
    },
    {
      'name': 'Rajan',
      'mobno': '4585859596',
      'unread': '4'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mapping Widgets')),
      body: Container(
        child: Column(
          children: [
            Expanded(

              child: ListView(
                children: ( arrData.map((value) {
                 return ListTile(
                   leading: Icon(Icons.person),
                   title: Text(value['name'].toString()),
                   subtitle: Text(value['mobno'].toString()),
                   trailing: CircleAvatar(
                     radius: 13,
                       backgroundColor: Colors.greenAccent,
                       child: Text(value['unread'].toString())),

                 );
                }).toList()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
