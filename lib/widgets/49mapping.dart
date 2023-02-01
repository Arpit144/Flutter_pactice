import 'package:flutter/material.dart';
import '50mapping_listtile.dart';

class MappingScreen extends StatefulWidget {
  const MappingScreen({Key? key}) : super(key: key);

  @override
  State<MappingScreen> createState() => _MappingScreenState();
}

class _MappingScreenState extends State<MappingScreen> {

  var arrData = ['Arpit','Patel','Nisarg','Kirtan','Rajan'];

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
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                        color: Colors.lightBlue.shade200,

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text(value,style: TextStyle(fontSize: 25),)),
                        ),
                      ),
                    );
                  }).toList()
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Mapping_Screen(),));
            }, child: Text('Next'))
          ],
        ),
      ),
    );
  }
}
