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
        text: "i love to explain tech.",
        imageUrl: "Asset/mac.jpeg"),
    Quote(
      author: "Mayuko Inoue",
      text: "i have a youtube channel.",
      imageUrl: "Asset/mayuko.jpg",
    ),
    Quote(
      author: "Brad Traversy",
      text: "I teach web dev on youtube",
      imageUrl: "Asset/brad.jpeg",
    ),
    Quote(
      author: "Tadas Patras",
      text: "i teach flutter on youtube",
      imageUrl: "Asset/tadas.jpeg",
    ),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
      elevation: 0.0,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(quote.imageUrl),
                  radius: 35.0,
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
          return quoteTemplate(
            quote,
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.purpleAccent.shade700,
        child: Icon(Icons.person),
      ),
    );
  }
}
