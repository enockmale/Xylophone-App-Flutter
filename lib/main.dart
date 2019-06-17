import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int i) {
    final player = new AudioCache();
    player.play('note$i.wav');
  }

  //custom ui widget for the xylophone buttons and sounds
  Widget uix(Color color, int j) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(j);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              uix(Colors.red, 1),
              uix(Colors.orange, 2),
              uix(Colors.yellow, 3),
              uix(Colors.green, 4),
              uix(Colors.teal, 5),
              uix(Colors.blue, 6),
              uix(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
