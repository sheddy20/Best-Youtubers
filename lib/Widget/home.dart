import 'package:Quotes/Widget/quoteCard.dart';
import 'package:Quotes/classes/quotes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> _quotes = [
    Quote(
        author: "Marques Brownlee",
        text: "I make tech videos on youtube",
        imageUrl: "Asset/mac.jpeg"),
    Quote(
      author: "Mayuko Inoue",
      text: "I upload my dev videos on youtube",
      imageUrl: "Asset/mayuko.jpg",
    ),
    Quote(
      author: "Brad Traversy",
      text: "I Teach web dev and programming on youtube",
      imageUrl: "Asset/brad.jpeg",
    ),
    Quote(
      author: "Tadas Petra",
      text: "I teach beginners how to build flutter apps",
      imageUrl: "Asset/tadas.jpeg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: FaIcon(FontAwesomeIcons.youtube),
            onPressed: () {},
          ),
        ],
        title: Text("Favourite Youtubers"),
        centerTitle: true,
      ),
      body: ListView(
        children: _quotes.map((quote) {
          return QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  _quotes.remove(quote);
                });
              });
        }).toList(),
      ),
    );
  }
}
