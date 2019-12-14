import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = new AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget createKey(Color color, int noteNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createKey(Colors.red, 1),
              createKey(Colors.green, 1),
              createKey(Colors.blue, 1),
              createKey(Colors.orange, 1),
              createKey(Colors.blueGrey, 1),
              createKey(Colors.white70, 1),
              createKey(Colors.indigo, 1),
            ],
          ),
        ),
      ),
    );
  }
}
