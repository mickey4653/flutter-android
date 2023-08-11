
import 'package:flutter/material.dart';
 import 'quote.dart';
 import 'quote_card.dart';
void main() => runApp(MaterialApp(

  home: QuotesList() ,
));

class QuotesList extends StatefulWidget {
  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote(author: 'Osca Wilde', text:'Be yourself; everyone else is already taken.'),
    Quote(author: 'Osca Wilde', text:'I have nothing to declare except my genius.'),
    Quote(author: 'Osca Wilde', text:'The truth is rarely pure and never simple.')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) =>QuoteCard(
            quote: quote,
          delete:(){
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}




