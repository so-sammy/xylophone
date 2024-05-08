import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void sounds( int soundNumber) async{
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildkey({required Color color, required int soundNumber}){
    return Expanded(
      child: TextButton(
        onPressed: () {sounds(soundNumber);},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: Text('press me',
          style: TextStyle(
            color: color,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(

            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              buildkey(color: Colors.purple,soundNumber:1),
              SizedBox(height: 2.0),
              buildkey(color: Colors.indigo,soundNumber:2),
              SizedBox(height: 2.0),
              buildkey(color: Colors.yellow,soundNumber:3),
              SizedBox(height: 2.0),
              buildkey(color: Colors.greenAccent,soundNumber:4),
              SizedBox(height: 2.0),
              buildkey(color: Colors.lightBlueAccent,soundNumber:5),
              SizedBox(height: 2.0),
              buildkey(color: Colors.orangeAccent,soundNumber:6),
              SizedBox(height: 2.0),
              buildkey(color: Colors.red,soundNumber:7),


            ],
          ),
        ),
      ),
    );
  }
}


