import 'package:flutter/material.dart';
import 'package:the_complete_app_by_appbrewery/widgets/app_main_widget.dart';
import 'package:audioplayers/audio_cache.dart';

class XylophoneMainScreen extends StatelessWidget {
  static const String xylophoneHomeScreenID = 'Xylophone';
  @override
  Widget build(BuildContext context) {
    return AppMainWidget(
      appTitle: 'Xylophone',
      appWidgetTree: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {
  void playSound(int noteID) {
    final player = AudioCache();
    player.play('xylophone/note$noteID.wav');
  }

  Expanded buildButton(int noteID, Color buttonColor, String buttonTitle) {
    return Expanded(
      child: FlatButton(
        color: buttonColor,
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {
          playSound(noteID);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildButton(1, Colors.red, 'DO'),
            buildButton(2, Colors.orange, 'RE'),
            buildButton(3, Colors.yellow, 'MI'),
            buildButton(4, Colors.green, 'FA'),
            buildButton(5, Colors.blue, 'SOL'),
            buildButton(6, Colors.indigo, 'LA'),
            buildButton(7, Colors.purple, 'TI'),
          ],
        ),
      ),
    );
  }
}
