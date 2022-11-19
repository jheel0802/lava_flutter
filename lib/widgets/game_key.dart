import 'package:flutter/material.dart';

class GameKey extends StatelessWidget {
  final String letter;
  const GameKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget keyCap;
    double width = 60;
    if (letter == "_") {
      keyCap = Icon(
        Icons.keyboard_return,
        size: 20,
      );
    } else if (letter == '<') {
      keyCap = Icon(
        Icons.backspace_outlined,
        size: 20,
      );
    } else {
      width = 40;
      keyCap = Text(
        letter,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
    }

    return Container(
      width: width,
      height: 60,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Color.fromRGBO(238, 209, 172, 1)),
      child: keyCap,
    );
  }
}
