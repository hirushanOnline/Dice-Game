import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(color: Colors.purple, soundNumber: 1),
        buildKey(color: Colors.indigo, soundNumber: 2),
        buildKey(color: Colors.blue, soundNumber: 3),
        buildKey(color: Colors.green, soundNumber: 4),
        buildKey(color: Colors.yellow, soundNumber: 5),
        buildKey(color: Colors.orange, soundNumber: 6),
        buildKey(color: Colors.red, soundNumber: 7),
      ],
    );
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: column,
        ),
      ),
    );
  }
}
