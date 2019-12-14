import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = new AudioCache();
    player.play('note$noteNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(children: [
            Expanded(
              child: FlatButton(
                color: Colors.red,
                onPressed: () {
                  playNote(1);
                },
                child: Text("Click me"),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.green,
                onPressed: () {
                  playNote(2);
                },
                child: Text("Click me"),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playNote(3);
                },
                child: Text("Click me"),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playNote(4);
                },
                child: Text("Click me"),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playNote(5);
                },
                child: Text("Click me"),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.grey,
                onPressed: () {
                  playNote(6);
                },
                child: Text("Click me"),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.indigo,
                onPressed: () {
                  playNote(1);
                },
                child: Text("Click me"),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
