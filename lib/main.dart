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

class XylophoneApp extends StatelessWidget {
  void _playSound(int sound1) {
    final player = AudioCache();
    player.play('note$sound1.wav');
  }

  Expanded _buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          _playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildKey(soundNumber: 1, color: Colors.red),
          _buildKey(soundNumber: 2, color: Colors.orange),
          _buildKey(soundNumber: 3, color: Colors.yellow),
          _buildKey(soundNumber: 4, color: Colors.green),
          _buildKey(soundNumber: 5, color: Colors.teal),
          _buildKey(soundNumber: 6, color: Colors.blue),
          _buildKey(soundNumber: 7, color: Colors.purple),
        ],
      ),
    );
  }
}








