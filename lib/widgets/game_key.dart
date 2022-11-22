import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lava_flutter/providers/game_state_provider.dart';

class GameKey extends ConsumerWidget {
  final String letter;
  const GameKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget keyCap;
    double width = 45;
    if (letter == "_") {
      keyCap = Icon(
        Icons.keyboard_return,
        size: 25,
      );
    } else if (letter == '<') {
      keyCap = Icon(
        Icons.backspace_outlined,
        size: 25,
      );
    } else {
      width = 37;
      keyCap = Text(
        letter.toUpperCase(),
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
    }

    return InkWell(
      onTap: (){
        ref.read(gameStateProvider.notifier).updateCurrentAttempt(letter);
      },
      child: Container(
        width: width,
        height: 50,
        alignment: Alignment.center,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Color.fromRGBO(238, 209, 172, 1)),
          child: keyCap,
      ),
    );
  }
}
