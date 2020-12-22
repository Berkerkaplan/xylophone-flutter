import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int musicNumber) {
    final player = AudioCache();
    player.play('note$musicNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(soundNumber: 1, color: Colors.red),
              buildKey(soundNumber: 2, color: Colors.blue),
              buildKey(soundNumber: 3, color: Colors.orange),
              buildKey(soundNumber: 4, color: Colors.purple),
              buildKey(soundNumber: 5, color: Colors.green),
              buildKey(soundNumber: 6, color: Colors.teal),
              buildKey(soundNumber: 7, color: Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
