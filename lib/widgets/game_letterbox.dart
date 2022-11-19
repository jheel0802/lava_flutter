import 'package:flutter/material.dart';

class GameLetterbox extends StatelessWidget {
  const GameLetterbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 2),),
    );
  }
}