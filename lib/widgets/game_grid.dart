import 'package:flutter/material.dart';
import 'package:lava_flutter/widgets/game_letterbox.dart';
import 'package:lava_flutter/widgets/game_row.dart';

const rows = 6;

class GameGrid extends StatelessWidget {
  const GameGrid({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GameRow(),
          GameRow(),
          GameRow(),
          GameRow(),
          GameRow(),
        ]),
    );
  }
}