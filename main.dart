import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(xylophone());

class xylophone extends StatefulWidget {
  @override
  _xylophoneState createState() => _xylophoneState();
}

class _xylophoneState extends State<xylophone> {
  void playSound(int soundNum){
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded buildTone(int ToneNumber, int HEXcolor){
    return Expanded(
      child: FlatButton(
        color: Color(HEXcolor),
        onPressed: (){
          playSound(ToneNumber);
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
            children: <Widget>[
              buildTone(1, 0xfff283a5),
              buildTone(2, 0xfff9dd8f),
              buildTone(3, 0xffefc88e),
              buildTone(4, 0xff97e0bb),
              buildTone(5, 0xff7bbeeb),
              buildTone(6, 0xffa2a2ea),
              buildTone(7, 0xff8d6c9f),
            ],),
        ),
      ),
    );
  }
}
