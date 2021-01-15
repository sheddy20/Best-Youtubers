import 'package:Quotes/classes/quotes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class QuoteCard extends StatelessWidget {
  _launchUrl() async {
    const url = "https://www.youtube.com/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton.icon(
                  onPressed: delete,
                  label: Text("Delete user"),
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  icon: FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                  ),
                  onPressed: _launchUrl,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
