import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = new AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget createKey({Color color, int noteNumber}) {
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
              createKey(color: Colors.red, noteNumber: 1),
              createKey(color: Colors.green, noteNumber: 1),
              createKey(color: Colors.blue, noteNumber: 1),
              createKey(color: Colors.orange, noteNumber: 1),
              createKey(color: Colors.blueGrey, noteNumber: 1),
              createKey(color: Colors.grey, noteNumber: 1),
              createKey(color: Colors.indigo, noteNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
