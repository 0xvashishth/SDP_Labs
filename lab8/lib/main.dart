import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

/*
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home : Lab8(),
));

class Lab8 extends StatelessWidget {
  // const Lab8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Lab-08'),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
        elevation: 0.0,
      ),
      /*
      // CODE-01
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Text('Hello only padding!!'),
      ),
       */

      // CODE-02
      /*
      body: Row(
        children: [
          Text('Hello From ROW!!'),
          FlatButton(
            onPressed: (){},
            color: Colors.blue[600],
            child: Text('Hit Me'),
          ),
          Container(
            color: Colors.cyanAccent,
            padding: EdgeInsets.all(30.0),
            child: Text('Inside the container'),
          ),
        ],
      ),
       */

        /*
      // CODE-03
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

        // crossAxisAlignment: CrossAxisAlignment.stretch,
        crossAxisAlignment: CrossAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.baseline,

        children:[
          /*
          Text('Hello from column!!'),
          FlatButton(
            onPressed: (){},
            color: Colors.blueAccent,
            child: Text('Hit Me')
          ),
          */
          // Row(),
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Hello Guys!!'),
              Text('How are you?'),
            ]
          ),
          Container(
            color: Colors.deepPurpleAccent,
            padding: EdgeInsets.all(40.0),
            child: Text('Container 2')
          ),
          Container(
            color: Colors.lightGreenAccent,
            padding: EdgeInsets.all(50.0),
            child: Text('Container 1'),
          ),
          Container(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(60.0),
              child: Text('Container 2')
          ),
        ],
      ),
      */
      /*
      body: Row(
        children:[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.lightGreenAccent,
              child: Text('1'),
            )
          ),
          Container(
            color: Colors.deepOrange,
            padding: EdgeInsets.all(20.0),
            child: Text('Container 1'),
          ),
          Container(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.all(20.0),
              child: Text('Container 2')
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('Click')
      ),
       */
    );
  }
}
 */

/*
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: FinalTest1(),
));
class FinalTest1 extends StatefulWidget {
  @override
  State<FinalTest1> createState() => _FinalTest1State();
}

class _FinalTest1State extends State<FinalTest1> {
// const FinalTest1({Key? key}) : super(key: key);
  num age = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[600],
        elevation: 0.0,
      ),
      floatingActionButton : FloatingActionButton(
        onPressed: (){
        setState((){
          age += 1;
        });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            age -= 1;
          });
        },
        child: Icon(Icons.exposure_minus_1),
        backgroundColor: Colors.blue,
      ),
       */
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/d1.jpeg'),
            ),
            Text(
              'NAME: ',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Vasu Patel',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'AGE',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$age',
              style: TextStyle(
                color: Colors.blue[900],
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  color: Colors.deepPurple[800],
                ),
                SizedBox(width: 12.0),
                Text(
                  '20ceubg080@ddu.ac.in',
                  style: TextStyle(
                    color: Colors.brown[800],
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Test1 extends StatefulWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
 */

void main() => runApp(MaterialApp(
  home: EchoList(),
));

class EchoList extends StatefulWidget {
  // const EchoList({Key? key}) : super(key: key);

  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  List<Quote> quotes = [
    Quote(text: 'The truth is really pure', author: 'Vasu'),
    Quote(author: 'Vashishth', text: 'I love to see people'),
    Quote(author: 'Vashishth', text: 'I love to show people'),
    Quote(author: 'Vashishth', text: 'I love to play with people'),
  ];


  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote,);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[300],
      ),
      body: Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    // children: quotes.map((quote) => quoteTemplate(quote)).toList(),
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