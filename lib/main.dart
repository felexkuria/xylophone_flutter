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

  void _playSound(int sound1){

    final player =AudioCache();
    player.play('note$sound1.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
          color:Colors.red[800],
        ),
          Container(
            color:Colors.orange,
          ),
          Container(
            color:Colors.yellow,
          ),
          Container(
            color:Colors.green[400],
          ),
          Container(
            color:Colors.teal[400],
          ),  Container(
            color:Colors.blue[400],
          ),
          Container(
            color:Colors.purple[300],
          ),


        ],
      ),
    );
  }
}
