import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});
  
  // const QuoteCard({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16,16, 16, 16),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height:2.0),
          FlatButton.icon(
            onPressed: delete,
            label: Text('Delete Quote'),
            icon: Icon(Icons.delete),
          )
        ],),
      ),
    );
  }
}