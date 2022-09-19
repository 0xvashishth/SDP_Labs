import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {
  // const QuoteCard({
  //   Key? key,
  // }) : super(key: key);
  final Quote quote;
  final VoidCallback delete;

  QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            TextButton.icon(
              /*
              our data doesn't exist inside this stateless widget class..
              data are in 'main.dart' file. ..
              */
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('Delete Quote'),
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black54,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
