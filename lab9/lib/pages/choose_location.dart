import 'package:flutter/material.dart';
import 'package:lab81/quote.dart';
import 'package:lab81/quote_card.dart';

class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {

    List<Quote> quotes = [
    Quote(text: 'The truth is really pure', author: 'Vasu'),
    Quote(author: 'Vashishth', text: 'I love to see people'),
    Quote(author: 'Vashishth', text: 'I love to show people'),
    Quote(author: 'Vashishth', text: 'I love to play with people'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,

      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("This is new location!"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
//         children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState((){
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}