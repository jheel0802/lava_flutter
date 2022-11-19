import 'package:flutter/material.dart';
import 'package:lava_flutter/widgets/game_letterbox.dart';
import 'package:lava_flutter/widgets/game_row.dart';

const rows = 5;
const wordsize = 5;

class GameGrid extends StatelessWidget {
  const GameGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        GameRow(
          wordsize: 5,
        ),
        GameRow(
          wordsize: 5,
        ),
        GameRow(
          wordsize: 5,
        ),
        GameRow(
          wordsize: 5,
        ),
        GameRow(
          wordsize: 5,
        ),
      ]),
    );
  }
}
