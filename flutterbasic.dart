// ignore_for_file: avoid_print

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:Home() ));
}


class Home extends StatelessWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Text('SKSN'),
            backgroundColor: Colors.red[400]),
        body: Center(
          child: Image(
            image: NetworkImage('https://images.unsplash.com/photo-1569887652102-59696fef1528?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=718&q=80'),
//           image: AssetImage('assets/image1.jpeg'),
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
        child: Text('cont.'),),
      );
  }
}
