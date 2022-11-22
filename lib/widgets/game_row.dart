import 'package:flutter/material.dart';
import 'package:lava_flutter/widgets/game_letterbox.dart';

class GameRow extends StatelessWidget {
  final int wordsize;
  final String word;
  final String correctWord;
  final bool attempted;
  const GameRow({Key? key, required this.wordsize, required this.word, required this.correctWord, required this.attempted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<GameLetterbox> boxes = List.empty(growable: true);
    for (int j = 0; j < wordsize; j++) {
      var letter = "";
      if(word.length>j){
        letter = word[j];
      }
      boxes.add(GameLetterbox(pos: j, letter: letter, attempted: attempted, correctWord: correctWord,));
    }

    return Row(mainAxisSize: MainAxisSize.min, children: boxes);
  }
}
