import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var first= [0, 80, 120, 190];
  var second= [0, 50, 110, 210];
  var third= [10, 20, 40, 60];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body:  Expanded(
        child:Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.redAccent,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}