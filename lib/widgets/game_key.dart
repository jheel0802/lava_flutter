import 'package:flutter/material.dart';

class GameKey extends StatelessWidget {
  final String letter;
  const GameKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 60,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(color: Color.fromRGBO(238, 209, 172, 1)),
      child: Text(letter),
    );
  }
}