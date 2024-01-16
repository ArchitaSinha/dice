import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: Text('Dice Roll'),
          backgroundColor: Colors.blue[400],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void Dice_change(){
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: TextButton(
                 onPressed: () { setState(() {
                   Dice_change();
                 });

                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'))),
          Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      Dice_change();
                    });
                  }, child: Image.asset('images/dice$rightDiceNumber.png'))),
        ],
      ),
    );
  }
}
