// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(Firstapp());
}

// ignore: use_key_in_widget_constructors
class Firstapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    // throw UnimplementedError();
    return FirstAppState();
  }
}

class FirstAppState extends State<Firstapp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Text('SKSN'),
            backgroundColor: Colors.red[400]),
        body: Center(
          child: Text(
            'hello world',
            style: TextStyle(
                color: Colors.red[500],
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
        child: Text('cont.'),),
      ),
    );
    // throw UnimplementedError();
  }
}

class Home extends StatelessWidget {
  // const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
