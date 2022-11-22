import 'package:flutter/material.dart';

class GameLetterbox extends StatelessWidget {
  final int pos;
  final String letter;
  final bool attempted;
  // final bool correctWord;
  final String correctWord;
  const GameLetterbox({Key? key, required this.pos, required this.letter, required this.correctWord, required this.attempted}) : super(key: key);

  Color? getBgColor(){
    if (!attempted) return null;

    if (!correctWord.contains(letter)) return Colors.grey;
    if (correctWord.indexOf(letter) == pos) return Colors.green;
    return Colors.orangeAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 2),
      color: getBgColor()
      ),
      child: 
      Text(letter.toUpperCase(),
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}