import 'package:flutter/material.dart';
// import 'package:random_words/random_words.dart';
import 'package:audioplayers/audio_cache.dart';
//learning to install pub.get

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
  void _playSound(int sound1) {
    final player = AudioCache();
    player.play('note$sound1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FlatButton(
              color: Colors.red[800],
              onPressed: () {
                _playSound(1);
              },
              child: null,
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.orange,
              child: null,
              onPressed: () {
                _playSound(2);
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.yellow,
              onPressed: () {
                _playSound(3);
              },
              child: null,
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.green[400],
              onPressed: () {
                _playSound(4);
              },
              child: null,
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.teal[400],
              onPressed: () {
                _playSound(5);
              },
              child: null,
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.blue[400],
              onPressed: () {
                _playSound(6);
              },
              child: null,
            ),
          ),
          Expanded(
            child: FlatButton(
              color: Colors.purple[300],
              onPressed: () {
                _playSound(7);
              },
              child: null,
            ),
          ),
        ],
      ),
    );
  }
}
