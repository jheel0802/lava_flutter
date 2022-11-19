import 'package:flutter/material.dart';
import 'package:lava_flutter/widgets/game_letterbox.dart';

class GameRow extends StatelessWidget {
  final int wordsize;
  const GameRow({Key? key, required this.wordsize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<GameLetterbox> boxes = List.empty(growable: true);
    for (int j = 0; j < wordsize; j++) {
      boxes.add(GameLetterbox());
    }

    return Row(mainAxisSize: MainAxisSize.min, children: boxes);
  }
}
