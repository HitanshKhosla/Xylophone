import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(xylo());
}

class xylo extends StatelessWidget {
  const xylo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: xyloapp(),
      ),
    );
  }
}

class xyloapp extends StatefulWidget {
  const xyloapp({super.key});

  @override
  State<xyloapp> createState() => _xyloappState();
}

class _xyloappState extends State<xyloapp> {
  void getsound(int soundno) async {
    final player = AudioPlayer();
    await player.setSource(AssetSource('note$soundno.wav'));
    await player.resume();
  }
  Expanded buildkey(Color color,int soundnumber){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Container(),
        onPressed: () {
          getsound(soundnumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
            children:<Widget>[
              buildkey(Colors.red,1),
              buildkey(Colors.orange,2),
              buildkey(Colors.yellow,3),
              buildkey(Colors.green,4),
              buildkey(Colors.teal,5),
              buildkey(Colors.blue,6),
              buildkey(Colors.purple,7),
        ],
    ),
    );
  }
}
