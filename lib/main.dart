import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: SoundApp(),
    ));

class SoundApp extends StatelessWidget {
  const SoundApp({super.key});
  void sound(int soundNum) {
    final player = AudioPlayer();
    player.play(DeviceFileSource('assets/note$soundNum.wav'));
  }

  Expanded buildKey(
      {required Color bgColor,
      required int soundNum,
      required Color textColor}) {
    return Expanded(
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(bgColor),
            ),
            onPressed: () {
              sound(soundNum);
            },
            child: Text('Note $soundNum',
            style: TextStyle(color: textColor),
            ),
            ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildKey(bgColor: Colors.black, soundNum: 1, textColor: Colors.white),
        buildKey(bgColor: Colors.white, soundNum: 2, textColor: Colors.black),
        buildKey(bgColor: Colors.black, soundNum: 3, textColor: Colors.white),
        buildKey(bgColor: Colors.white, soundNum: 4, textColor: Colors.black),
        buildKey(bgColor: Colors.black, soundNum: 5, textColor: Colors.white),
        buildKey(bgColor: Colors.white, soundNum: 6, textColor: Colors.black),
        buildKey(bgColor: Colors.black, soundNum: 7, textColor: Colors.white),
      ],
    );
  }
}
