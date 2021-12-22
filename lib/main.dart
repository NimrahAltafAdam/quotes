import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'Osca Wilde'),
    Quote(text: 'I have nothing to declare except my genuis', author: 'Osca Wilde'),
    Quote(text: 'The truth is rarely pure and never simple', author: 'Osca Wilde'),

  ];
  
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              )
            ),
            SizedBox(height: 6.0),
            Text(
                quote.author,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800],
                )
            ),

          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title : Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //ALWAYS USE CURLY BRACKETS WHEN YOU WISH TO DEFINE OR DISPLAY THE PROPERTIES OF VARIABLES
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      )
    );
  }
}

