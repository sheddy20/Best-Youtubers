import 'package:Quotes/classes/quotes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  bool changeBackground = true;

  void _change() {
    setState(() {
      changeBackground = true;
    });
  }

  void _revert() {
    setState(() {
      changeBackground = false;
    });
  }

  List<Quote> _quotes = [
    Quote(author: "Marques Brownlee", text: "i love to explain tech."),
    Quote(author: "Mayuko Inoue", text: "i have a youtube channel."),
    Quote(author: "Brad Traversy", text: "I teach web dev on youtube"),
    Quote(author: "Tadas Patras", text: "i teach flutter on youtube"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: changeBackground ? Colors.white : Colors.black,
      appBar: AppBar(
        title: Text("Best Youtubers"),
        centerTitle: true,
      ),
      body: Column(
        children: _quotes.map((quote) {
          return Text(
            '${quote.text} - ${quote.author}',
            style: TextStyle(
              fontSize: 18.0,
              color: changeBackground ? Colors.black : Colors.white,
              fontWeight: FontWeight.bold,
            ),
          );
        }).toList(),
      ),
      floatingActionButton: ButtonBar(
        children: [
          IconButton(
            icon: Icon(FontAwesomeIcons.volumeUp),
            onPressed: _change,
            iconSize: 35.0,
            color: Colors.red,
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.volumeDown),
            onPressed: _revert,
            iconSize: 35.0,
            color: Colors.red,
          ),
        ],
        buttonHeight: 50.0,
        buttonPadding: EdgeInsets.all(20.0),
      ),
    );
  }
}
