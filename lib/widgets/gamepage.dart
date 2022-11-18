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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [LavaTitleBar(), GameGrid(), GameKeyboard()],
        )
      ),
    );
  }
}