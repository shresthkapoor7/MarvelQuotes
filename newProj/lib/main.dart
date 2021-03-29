import 'package:flutter/material.dart';
import 'quote.dart';
import 'Quote_Card.dart';
void main() =>runApp(MaterialApp(
  home: QuoteList(),

));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  
  List<Quote> quotes = [
    Quote(author: 'Steve Rogers',text: 'On your left'),
    Quote(author: 'Iron Man',text: 'I am Iron man'),
    Quote(author: 'Doctor Strange',text: 'Dormammu I have come to bargin'),
    Quote(author: 'Loki',text:'I never wanted the throne, I only ever wanted to be equal!'),
  ];

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Marvel Quotes'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);   
            });
          }
          )).toList(),
      ),
    );
  }
}

