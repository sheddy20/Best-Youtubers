import 'package:Quotes/Widget/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyQuotes());

class MyQuotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Quotes",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red[600],
      ),
      home: QuoteList(),
    );
  }
}
