// ignore_for_file: avoid_print

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:Home() ));
}


class Home extends StatefulWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
        appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Text('SKSN'),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.grey[800]),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            age += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[600],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage:AssetImage('assets/sksn.jpeg'),
                radius: 45.0,

              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
                  ),
                ),
            SizedBox(height: 10.0),
            Text(
              'Shivakiran S',
              style: TextStyle(
                color:Colors.grey,
                fontSize: 22.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'AGE',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$age',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 22.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              children:<Widget>[
                Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                SizedBox(width: 10.0),
                Text(
                  'sksn2211@gmail.com',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ]
            )
          ],
        ),
      )

      );
  }
}

