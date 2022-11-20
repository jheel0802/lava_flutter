import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lava_flutter/providers/game_settings_provider.dart';
import 'package:lava_flutter/widgets/game_letterbox.dart';
import 'package:lava_flutter/widgets/game_row.dart';

const rows = 5;
const wordsize = 5;

class GameGrid extends ConsumerWidget {
  const GameGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameSettings = ref.watch(gameSettingsProvider);
    final wordSize = gameSettings.wordsize;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GameRow(
            wordsize: wordSize,
          ),
          GameRow(
            wordsize: wordSize,
          ),
          GameRow(
            wordsize: wordSize,
          ),
          GameRow(
            wordsize: wordSize,
          ),
          GameRow(
            wordsize: wordSize,
          ),
        ],
      ),
    );
  }
}
