import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      home: XylophoneApp(),
    ),
  );
}

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [Text(nouns.first)],
      ),
    );
  }
}
