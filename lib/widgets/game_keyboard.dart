import 'package:flutter/material.dart';
import 'package:lava_flutter/widgets/game_key.dart';

class GameKeyboard extends StatelessWidget {
  const GameKeyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [for (var i in "qwertyuiop".split("")) GameKey(i)],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [for (var i in "asdfghjkl".split("")) GameKey(i)],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [for (var i in "_zxcvbnm<".split("")) GameKey(i)],
        ),
      ],
    );
  }
}
