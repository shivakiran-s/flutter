// ignore_for_file: avoid_print



// import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
      home:Quotelist() ));
}
class Quotelist extends StatefulWidget {
  const Quotelist({Key? key}) : super(key: key);

  @override
  _QuotelistState createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  @override
  List<Quote> quotes = [
    Quote(author:'sksn',text:'Be yourself,everyone else already taken'),
    Quote(author:'sksn',text:'Be yourself,everyone else already taken'),
    Quote(author:'sksn',text:'Be yourself,everyone else already taken'),
    Quote(author:'sksn',text:'Be yourself,everyone else already taken'),
    Quote(author:'sksn',text:'Be yourself,everyone else already taken'),

  ];
  Widget quoteTemplate(quote){
    return Card(
      
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color:Colors.grey[800]
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 18.0,
                  color:Colors.grey[800]
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text('awsome quote'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body:Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      )
    );
  }
}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
  
  class Quote{
  String text;
  String author;

  Quote({required this.text,required this.author});
}

