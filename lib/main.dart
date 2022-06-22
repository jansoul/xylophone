import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int a) {
    final player = AudioCache();
    player.play("note$a.wav");
  }

  Expanded builder(Color colour, int x) {
    return Expanded(
      child: Container(
        color: colour,
        child: TextButton(
          child: Text(""),
          onPressed: () {
            playSound(x);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              builder(Colors.red, 1),
              builder(Colors.orange, 1),
              builder(Colors.yellow, 1),
              builder(Colors.green, 1),
              builder(Colors.teal, 1),
              builder(Colors.blue, 1),
              builder(Colors.purple, 1),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}
