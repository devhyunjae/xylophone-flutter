import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PlayButton(
                  color: Colors.red,
                  path: 'note1.wav',
                ),
                PlayButton(
                  color: Colors.orange,
                  path: 'note2.wav',
                ),
                PlayButton(
                  color: Colors.yellow,
                  path: 'note3.wav',
                ),
                PlayButton(
                  color: Colors.green,
                  path: 'note4.wav',
                ),
                PlayButton(
                  color: Colors.blue,
                  path: 'note5.wav',
                ),
                PlayButton(
                  color: Colors.indigo,
                  path: 'no  te6.wav',
                ),
                PlayButton(
                  color: Colors.purple,
                  path: 'note7.wav',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key key,
    @required this.color,
    @required this.path,
  }) : super(key: key);
  final MaterialColor color;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: TextButton(
        style: ButtonStyle(
            // padding: MaterialStateProperty.all(EdgeInsets.all(30)),
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ))),
        onPressed: () async {
          final player = AudioCache();
          await player.play(path);
        },
      ),
    );
  }
}
