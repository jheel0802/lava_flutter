// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'game_grid.dart';
import 'game_keyboard.dart';
import 'lava_title_bar.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color.fromARGB(255, 123, 87, 66),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [LavaTitleBar(), GameGrid(), GameKeyboard()],
          )),
    );
  }
}
