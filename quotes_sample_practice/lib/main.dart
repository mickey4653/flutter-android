import 'package:flutter/material.dart';
import 'package:quotes_sample_practice/quote.dart';

void main() => runApp(MaterialApp(
  home:QuotesList() ,
));

class QuotesList extends StatefulWidget {

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(text: "Be yourself; everyone else is already taken", author: "Osca Wilde"),
    Quote(text: "Be yourself; everyone else is already taken", author: "Osca Wilde"),
    Quote(text: "Be yourself; everyone else is already taken", author: "Osca Wilde")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0,
        title: Text("Awesome Quotes"),
        centerTitle: true,
      ),

      body: Column(
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
      ),
    );
  }
}




